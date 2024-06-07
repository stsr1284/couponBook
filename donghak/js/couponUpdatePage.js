var modalClose = document.getElementsByClassName("close");
var couponUpdateBtn = document.querySelector('.couponUpdate');
var informUpdateBtn = document.querySelector('.informUpdate');

couponUpdateBtn.addEventListener("click", function() {
	document.querySelector('.couponUpdateModal').style.display = "block";
});

informUpdateBtn.addEventListener("click", function() {
	document.querySelector('.informUpdateModal').style.display = "block";
});

// couponUpdate 취소버튼
modalClose[0].addEventListener("click", function() {
	document.querySelector('.couponUpdateModal').style.display = "none";
});

// informUpdate 취소버튼
modalClose[1].addEventListener("click", function() {
	document.querySelector('.informUpdateModal').style.display = "none";
});

const storeUpdateButton = document.getElementById('storeUpdateBtn');
const serviceUpdateButton = document.getElementById('serviceUpdateBtn');

storeUpdateButton.addEventListener('click', (event) => {
		event.preventDefault(); // 폼의 기본 제출 동작을 막음
	
	const confirmApproval = confirm("정말 수정하시겠습니까?");
	if (confirmApproval) {
		event.target.closest('form').submit();
	}
});

serviceUpdateButton.addEventListener('click', (event) => {
	event.preventDefault(); // 폼의 기본 제출 동작을 막음
	
	const confirmApproval = confirm("정말 수정하시겠습니까?");
	if (confirmApproval) {
		event.target.closest('form').submit();
	}
});