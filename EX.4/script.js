
const form = document.getElementById("registerForm");

form.addEventListener("submit", function (event) {
    event.preventDefault();

    const name = document.getElementById("name");
    const email = document.getElementById("email");
    const phone = document.getElementById("phone");
    const password = document.getElementById("password");
    const confirmPassword = document.getElementById("confirmPassword");
    const skills = document.getElementById("skills");
    const experience = document.getElementById("experience");
    const resume = document.getElementById("resume");
    const terms = document.getElementById("terms");

    let isValid = true;

    document.querySelectorAll(".error").forEach(function (error) {
        error.textContent = "";
    });

    if (name.value.trim() === "") {
        showError(name, "Full name is required");
        isValid = false;
    } else if (name.value.trim().length < 3) {
        showError(name, "Name must contain at least 3 characters");
        isValid = false;
    }
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    if (email.value.trim() === "") {
        showError(email, "Email is required");
        isValid = false;
    } else if (!emailPattern.test(email.value.trim())) {
        showError(email, "Enter a valid email address");
        isValid = false;
    }

    const phonePattern = /^[0-9]{10}$/;

    if (phone.value.trim() === "") {
        showError(phone, "Phone number is required");
        isValid = false;
    } else if (!phonePattern.test(phone.value.trim())) {
        showError(phone, "Phone number must contain exactly 10 digits");
        isValid = false;
    }
    if (password.value === "") {
        showError(password, "Password is required");
        isValid = false;
    } else if (password.value.length < 8) {
        showError(password, "Password must contain at least 8 characters");
        isValid = false;
    }
    if (confirmPassword.value === "") {
        showError(confirmPassword, "Please confirm your password");
        isValid = false;
    } else if (confirmPassword.value !== password.value) {
        showError(confirmPassword, "Passwords do not match");
        isValid = false;
    }
    const gender = document.querySelector('input[name="gender"]:checked');

    if (!gender) {
        const genderError = document.querySelector(
            'input[name="gender"]'
        ).parentElement.querySelector(".error");

        genderError.textContent = "Please select your gender";
        isValid = false;
    }
    if (skills.value === "") {
        showError(skills, "Please select a skill");
        isValid = false;
    }
    if (experience.value === "") {
        showError(experience, "Please select your experience");
        isValid = false;
    }
    if (resume.files.length === 0) {
        showError(resume, "Please upload your resume");
        isValid = false;
    } else {
        const file = resume.files[0];
        const allowedTypes = [
            "application/pdf",
            "application/msword",
            "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
        ];
        if (!allowedTypes.includes(file.type)) {
            showError(resume, "Only PDF, DOC, or DOCX files are allowed");
            isValid = false;
        }
        if (file.size > 5 * 1024 * 1024) {
            showError(resume, "Resume must be smaller than 5 MB");
            isValid = false;
        }
    }
    if (!terms.checked) {
        showError(terms, "You must accept the Terms & Conditions");
        isValid = false;
    }
    if (isValid) {
        alert("Registration successful!");

        // You can reset the form after successful registration
        form.reset();
    }
});


function showError(input, message) {
    const parent = input.parentElement;
    const error = parent.querySelector(".error");

    if (error) {
        error.textContent = message;
    }
}


