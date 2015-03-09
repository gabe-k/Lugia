$(document).ready(ready);
$(document).on('page:load', ready);

function ready() {
    $(window).resize(function () {
        allResizeFunctions();
    });
    allResizeFunctions();

    function calcWidthSecond(item1, item2, parent) {
        $(item2).width($(parent).width() - $(item1).width());
    }

    function pageWidth(fixed,vary){
      fixed = $(fixed);
      vary = $(vary);
      vary.width($(window).width() - fixed.width());
    }

    function allResizeFunctions() {
        calcWidthSecond(".image", ".meta", ".event");
        pageWidth("#navigation", "#details")
    }

    $('.event').click(function(){
       $('.event').removeClass('selected');
       $(this).addClass('selected');
    });
}
