const approveButton = document.querySelector('.approve');
	const rejectButton = document.querySelector('.reject');

	approveButton.addEventListener('click', (event) => {
		event.preventDefault(); // 폼의 기본 제출 동작을 막음
		const confirmApproval = confirm("정말 승인하시겠습니까?");
		if (confirmApproval) {
			// 확인을 누르면 폼을 제출
			event.target.closest('form').submit();
		}
	});

	rejectButton.addEventListener('click', (event) => {
		event.preventDefault(); // 폼의 기본 제출 동작을 막음
		const confirmRejection = confirm("정말 거절하시겠습니까?");
		if (confirmRejection) {
			// 확인을 누르면 formaction에 따라 폼을 제출
			event.target.closest('form').submit();
		}
	});