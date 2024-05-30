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
