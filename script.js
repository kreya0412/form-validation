$(document).ready(function(){
    $("form").submit(function(event) {
        event.preventDefault(); 

        var username = $("#username").val();
        var password = $("#password").val();
        var email = $("#email").val();
        var city = $("#city").val();
        var fullname = $("#fullname").val();
        var confirmPassword = $("#confirmPassword").val();

        var username_regex = /^[a-zA-Z]+$/;
        var email_regex = /^[\w-.]+@[a-zA-Z0-9.-]+\.[a-zA-Z0-9]{2,4}$/;
        var password_regex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/;
        var city_regex = /^[a-zA-Z\s]{2,50}$/;
        var fullname_regex = /^[a-zA-Z\s-]{2,50}$/;

        if (username.length === 0) {
            alert("Please enter a username.");
            return;
        } else if (!username_regex.test(username)) {
            alert("Username should contain only letters.");
            return;
        }


        if (password.length === 0) {
            alert("Please enter a password.");
            return;
        } else if (!password_regex.test(password)) {
            alert("Password should be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, and one number.");
            return;
        }

               if (confirmPassword.length === 0) {
                alert("Please confirm your password.");
                return;
            }
    
            if (password !== confirmPassword) {
                alert("Passwords do not match!");
                return;
            }
    
        
        if (email.length === 0) {
            alert("Please enter an email address.");
            return;
        } else if (!email_regex.test(email)) {
            alert("Please enter a valid email address.");
            return;
        }
        
        if (city.length === 0) {
            alert("Please enter your city.");
            return;
        } else if (!city_regex.test(city)) {
            alert("City should contain only letters and spaces.");
            return;
        }

        if (fullname.length === 0) {
            alert("Please enter your full name.");
            return;
        } else if (!fullname_regex.test(fullname)) {
            alert("Full name should contain only letters, spaces, and hyphens.");
            return;
        }


        
                var formData = $(this).serialize();
        
                $.ajax({
                    type: 'POST',
                    url: 'process.php',
                    data: formData,
                    success: function(response) {
                        console.log(response);
                        window.location.href = 'success.php';
                    },
                    error: function(xhr, status, error) {
                        console.error(error);
                        window.location.href = 'error.php';
                    }
                });
            });
        });
        

