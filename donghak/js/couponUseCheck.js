const approveButtons = document.querySelectorAll('.storePlaceBtn');

approveButtons.forEach(button => {
	button.addEventListener('click', (event) => {
		event.preventDefault(); // 폼의 기본 제출 동작을 막음
		const confirmApproval = confirm("정말 사용하시겠습니까?");
		if (confirmApproval) {
			// 확인을 누르면 폼을 제출
			event.target.closest('form').submit();
		}
	});
});