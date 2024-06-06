const stampRequestBtn = document.querySelector('.stampRequestBtn');

stampRequestBtn.addEventListener('click', (event) => {
	event.preventDefault(); // 폼의 기본 제출 동작을 막음
	const confirmApproval = confirm("스탬프 요청하시겠습니까?");
	if (confirmApproval) {
		// 확인을 누르면 폼을 제출
		event.target.closest('form').submit();
	}
});

const couponDeleteBtn = document.querySelector('.couponDelteBtn');

couponDeleteBtn.addEventListener('click', (event) => {
	event.preventDefault(); // 폼의 기본 제출 동작을 막음
	const confirmApproval = confirm("쿠폰 삭제하시겠습니까?");
	if (confirmApproval) {
		// 확인을 누르면 폼을 제출
		event.target.closest('form').submit();
	}
});
