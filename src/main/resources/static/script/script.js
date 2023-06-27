$(function() {
  // 메인페이지 이미지 슬라이드
  var slideIndex = 0;
  var slides = $(".slide");

  function showSlide() {
    for (var i = 0; i < slides.length; i++) {
      $(slides[i]).hide();
    }
    slideIndex++;
    if (slideIndex > slides.length) {
      slideIndex = 1;
    }
    $(slides[slideIndex - 1]).show();
    setTimeout(showSlide, 5000); // 5초마다 슬라이드 전환
  }

  showSlide();

  // 회원 탈퇴
  $("span.delIcon").click(function() {
    let chkToF = confirm("정말로 회원탈퇴 하시겠습니까?");
    if (chkToF) {
      let num = $(this).parent("div").attr("data-link");
      location.href = "/memberDel?num=" + num;
      return false;
    } else {
      alert("회원탈퇴를 취소하셨습니다.");
      return false;
    }
  });
});



