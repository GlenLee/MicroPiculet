// Initialize app
var myApp = new Framework7({
      // router: false
      // pushState : true,
});

// If we need to use custom DOM library, let's save it to $$ variable:
var $$ = Framework7.$;

// Add view
var mainView = myApp.addView('.view-main', {
  // Because we want to use dynamic navbar, we need to enable it for this view:
  dynamicNavbar: true,
  // animatePages: false
});

mainView.router.load({
    url: 'home.html',
    animatePages: false
});
// tabbar change
(function(){
    var tabbarList = $$('#tabbar a');
    var bgRadius = $$('.bgRadius');
        tabbarList.each(function(i){
          bgRadius.css({'background':'#fe0000'});
          bgRadius.parent().find('span').css('color','#fff');
          $$(this).click(function(){
            if (i == 2) {
              tabbarList.removeClass('active');
              $$(this).addClass('active');
              bgRadius.css({'background':'#fe0000'});
              bgRadius.parent().find('span').css('color','#fff');
            }else{
              tabbarList.removeClass('active');
              $$(this).addClass('active');
              bgRadius.css({'background':'#c8c8c8'});
              bgRadius.parent().find('span').css('color','#333');
            }
          });
        });
})();
$$(document).on('pageInit', function (e) {
    var page = e.detail.page;
    if (page.name === 'home') {
    var mySwiper1 = myApp.swiper('.swiper-1', {
      pagination:'.swiper-1 .swiper-pagination',
      spaceBetween: 0,
      autoplay: 2000
    });
    }
});

$$(document).on('pageInit', function (e) {
    var page = e.detail.page;
    if (page.name === 'subject') {

      var mySwiper = myApp.swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationHide: false,
        paginationClickable: true,
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        paginationCurrentClass: 'swiper-pagination-current',
        paginationTotalClass: 'swiper-pagination-total'
      });        


    }
});

