const form = document.getElementById('form');
const id = document.getElementById('id');
const name = document.getElementById('name');
const email = document.getElementById('email');
const mobile = document.getElementById('mobile');
const seeInternshipField = document.getElementById('seeInternshipField');
const semester = document.getElementById('semester');
const specialization = document.getElementById('specialization');
const supemail = document.getElementById('supemail');

form1.addEventListener('submit', e => {
	e.preventDefault();

	checkInputs();
});

function checkInputs() {
	// get the values from the inputs
	const idValue = id.value.trim();
	const nameValue = name.value.trim();
	const emailValue = email.value.trim();
	const mobileValue = mobile.value.trim();
	const seeInternshipFieldValue = seeInternshipField.value.trim();
	const semestervalue = semester.value.trim();
	const specializationValue = specialization.value.trim();
	const supemailValue = supemail.value.trim();

	if (idValue === '') {
		// show error
		// add error class
		setErrorFor(id, 'ID cannot be empty');
	} else if (!isId(idValue)) {
		setErrorFor(id, 'Not a valid ID number (EX: IT12345678)');
	} else {
		// add success class
		setSuccessFor(id);
	}

	if (nameValue === '') {
		// show error
		// add error class
		setErrorFor(name, 'Name cannot be empty');
	} else if (!isName(nameValue)) {
		setErrorFor(name, 'Not a valid Name');
	} else {
		// add success class
		setSuccessFor(name);
	}

	if (emailValue === '') {
		// show error
		// add error class
		setErrorFor(email, 'Email Address cannot be empty');
	} else if (!isEmail(emailValue)) {
		setErrorFor(email, 'Not a valid Email Address');
	} else {
		// add success class
		setSuccessFor(email);
	}

	if (mobileValue === '') {
		// show error
		// add error class
		setErrorFor(mobile, 'Mobile cannot be empty');
	} else if (!isMobile(mobileValue)) {
		setErrorFor(mobile, 'Not a valid Mobile Number (EX: 712345678)');
	} else {
		// add success class
		setSuccessFor(mobile);
	}

	if (supemailValue === '') {
		// show error
		// add error class
		setErrorFor(supemail, 'Supervisor Email Address cannot be empty');
	} else if (!issupEmail(supemailValue)) {
		serError(supemail, 'Not a valid Email Address');
	} else {
		// add success class
		setSuccessFor(supemail);
	}
}

function setErrorFor(input, message) {
	const formControl = input.parentElement; // .form-group
	const small = formControl.querySelector('small');

	// add error message inside small
	small.innerText = message;

	// add error class
	formControl.className = 'input-group error';
}

function setSuccessFor(input) {
	const formControl = input.parentElement;
	formControl.className = 'input-group success';
}

function isId(idValue) {
	return /^((IT)[0-9]{8})$/.test(idValue);
}

function isName(nameValue) {
	return /[a-zA-Z]/.test(nameValue);
}

function isEmail(emailValue) {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(emailValue);
}

function isMobile(mobileValue) {
	return /^([0-9]{9})$/.test(mobileValue);
}

function issupEmail(supemailValue) {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(supemailValue);
}

