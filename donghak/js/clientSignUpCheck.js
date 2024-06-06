function isEnglish(username) {
	// 영어만 포함되어 있는지 확인하는 정규 표현식
	var regex = /^[A-Za-z0-9_.]{3,15}$/;
	return regex.test(username);
}

function validateId(event) {
	// 기본 폼 제출을 막음
	//event.preventDefault(); // 의미를 모르겠음 일단 주석처리
	var inputElement = document.getElementById("userId");
	var inputValue = inputElement.value;
	
	if (isEnglish(inputValue)) {
		return true;
	} else {
		if (inputValue == "") {
			return false;
		}
		console.log("아이디 체크")
		document.getElementById("myModal").style.display = "block";
		inputElement.value = "";
		return false;
	}
}

function isEnglish(username) {
	// 영어만 포함되어 있는지 확인하는 정규 표현식
	var regex = /^[A-Za-z0-9_.]{3,15}$/;
	return regex.test(username);
}

function validateId(event) {
	// 기본 폼 제출을 막음
	//event.preventDefault(); // 의미를 모르겠음 일단 주석처리
	var inputElement = document.getElementById("userId");
	var inputValue = inputElement.value;
	
	if (isEnglish(inputValue)) {
		return true;
	} else {
		if (inputValue == "") {
			return false;
		}
		console.log("아이디 체크")
		alert("아이디 오류")
		inputElement.value = "";
		return false;
	}
}

function validatePass(event) {
	//event.preventDefault(); // 의미를 모르겠음 일단 주석처리
	var inputElement = document.getElementById("userPass");
	var inputValue = inputElement.value;
	
	if (isEnglish(inputValue)) {
		return true;
	} else {
		if (inputValue == "") {
			return false;
		}
		console.log("비밀번호 체크")
		alert("비밀번호 오류")
		inputElement.value = "";
		return false;
	}
}

// 아이디 예외처리
document.getElementById("userId").addEventListener("blur", validateId);
// 아이디 형식: 영문자, 숫자, 밑줄(_),점(.), 3~15자의 문자열

// 비밀번호 예외처리
document.getElementById("userPass").addEventListener("blur", validatePass);


function isTel(usertel) {
	var regex = /^[0-9]{11}$/;
	return regex.test(usertel);
}

function validateTel(event) {
	var inputElement = document.getElementById("userTel");
	var inputValue = inputElement.value;
	console.log(inputValue);
	
	if (isTel(inputValue)) {
		return true;
	} else {
		if (inputValue == "") {
			return false;
		}
		alert("전화번호 오류!")
		inputElement.value = "";
		return false;
	}
}

// 전화번호 예외처리
document.getElementById("userTel").addEventListener("blur", validateTel);



