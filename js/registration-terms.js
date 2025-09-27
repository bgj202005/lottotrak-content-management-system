/**
 * Registration with Terms of Service Agreement Handler
 * Handles the complete registration flow including terms agreement
 */

$(document).ready(function() {
    
    // Handle registration form submission
    $('#register-form').on('submit', function(e) {
        e.preventDefault();
        
        var username = $('#register_username').val();
        var email = $('#register_email').val();
        
        // Clear previous messages
        clearRegistrationMessages();
        
        // Basic client-side validation
        if (!username || username.length < 5) {
            showRegistrationError('Username must be at least 5 characters long');
            return false;
        }
        
        if (!email || !isValidEmail(email)) {
            showRegistrationError('Please enter a valid email address');
            return false;
        }
        
        // Show loading state
        showRegistrationLoading();
        
        // Submit registration data to server
        $.ajax({
            url: base_url + 'member/register',
            type: 'POST',
            dataType: 'json',
            data: {
                username: username,
                email: email,
                'csrf_token_name': csrf_hash // Include CSRF token
            },
            success: function(response) {
                hideRegistrationLoading();
                
                if (response.error) {
                    // Show validation errors
                    if (response.validation_error) {
                        showRegistrationError(response.validation_error);
                    } else {
                        showRegistrationError('Registration failed. Please try again.');
                    }
                } else {
                    // Success - show success message and redirect to terms
                    if (response.success) {
                        showRegistrationSuccess(response.success);
                        
                        // Redirect to terms agreement page after short delay
                        setTimeout(function() {
                            if (response.redirect_url) {
                                window.location.href = response.redirect_url;
                            } else {
                                window.location.href = base_url + 'member/terms_agreement';
                            }
                        }, 2000);
                    }
                }
            },
            error: function(xhr, status, error) {
                hideRegistrationLoading();
                showRegistrationError('An error occurred. Please try again.');
                console.error('Registration error:', error);
            }
        });
        
        return false;
    });
    
    // Utility functions for registration form
    function clearRegistrationMessages() {
        $('#div-register-msg').removeClass('alert-danger alert-success').hide();
        $('#text-register-msg').html('Register an account.');
        $('#icon-register-msg').removeClass('glyphicon-remove glyphicon-ok').addClass('glyphicon-chevron-right');
    }
    
    function showRegistrationError(message) {
        $('#div-register-msg').addClass('alert-danger').show();
        $('#text-register-msg').html(message);
        $('#icon-register-msg').removeClass('glyphicon-chevron-right glyphicon-ok').addClass('glyphicon-remove');
    }
    
    function showRegistrationSuccess(message) {
        $('#div-register-msg').addClass('alert-success').show();
        $('#text-register-msg').html(message);
        $('#icon-register-msg').removeClass('glyphicon-chevron-right glyphicon-remove').addClass('glyphicon-ok');
    }
    
    function showRegistrationLoading() {
        $('#register-submit-btn').prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Processing...');
    }
    
    function hideRegistrationLoading() {
        $('#register-submit-btn').prop('disabled', false).html('Register');
    }
    
    function isValidEmail(email) {
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    }
});

/**
 * Terms Agreement Handler
 * Handles the terms agreement form submissions
 */
$(document).ready(function() {
    
    // Ensure forms are submitted properly
    $('form[action*="member/process_terms"]').on('submit', function(e) {
        var formData = $(this).serialize();
        var action = $(this).attr('action');
        
        // Show loading state on the clicked button
        var submitBtn = $(this).find('button[type="submit"]');
        var originalText = submitBtn.html();
        submitBtn.prop('disabled', true).html('<i class="fa fa-spinner fa-spin"></i> Processing...');
        
        // Submit the form
        $.ajax({
            url: action,
            type: 'POST',
            data: formData,
            success: function(response) {
                // Form submission successful - let the server handle redirect
                if (typeof response === 'string' && response.indexOf('<!DOCTYPE') !== -1) {
                    // Response is HTML (new page), replace current page
                    document.open();
                    document.write(response);
                    document.close();
                } else {
                    // JSON response or redirect
                    window.location.reload();
                }
            },
            error: function(xhr, status, error) {
                // Reset button state on error
                submitBtn.prop('disabled', false).html(originalText);
                
                if (xhr.status === 302 || xhr.status === 301) {
                    // Redirect response
                    window.location.href = xhr.getResponseHeader('Location') || '/';
                } else {
                    alert('An error occurred. Please try again.');
                    console.error('Terms processing error:', error);
                }
            }
        });
        
        return false; // Prevent default form submission
    });
    
    // Add confirmation for decline button
    $('button[type="submit"]').filter(function() {
        return $(this).find('.glyphicon-remove').length > 0;
    }).on('click', function(e) {
        if (!confirm('Are you sure you want to decline the terms and cancel your registration?')) {
            e.preventDefault();
            return false;
        }
    });
});

/**
 * Global Configuration
 * Set up base configuration for the registration system
 */
var base_url = (typeof site_url !== 'undefined') ? site_url : '/';
var csrf_hash = (typeof csrf_token !== 'undefined') ? csrf_token : '';

// Alternative CSRF token retrieval
$(document).ready(function() {
    var csrfMeta = $('meta[name="csrf-token"]');
    if (csrfMeta.length) {
        csrf_hash = csrfMeta.attr('content');
    }
    
    // Alternative: get from hidden form field
    var csrfInput = $('input[name*="csrf"]');
    if (csrfInput.length && !csrf_hash) {
        csrf_hash = csrfInput.val();
    }
});