const approveButton = document.querySelectorAll('.storePlaceBtn');

approveButton.forEach(button => {
	button.addEventListener('click', (event) => {
		event.preventDefault(); // 폼의 기본 제출 동작을 막음
		const form = event.target.closest('form');
		const input = form.querySelector('#couponServiceCheck');[]
	
		if (input.value == "") {
			alert("발행 준비중 입니다!")
			return false;
		}
		else {
			const confirmApproval = confirm("정말 발행하시겠습니까?");
			if (confirmApproval) {
				// 확인을 누르면 폼을 제출
				event.target.closest('form').submit();
			}
		}
	});
});