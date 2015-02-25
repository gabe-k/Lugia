/* functions to help javascript layouts */

function windowHeight(item){
  $(item).height(
    $(window).height()
  )
}

function verticalCenter(item,parent,padding){
  //choose margin by default depending on "padding" string
  if (padding == 'padding'){
    type = 'padding-top';
  }
  else if (padding == 'top'){
    type = 'top';
    //set element to a relative position if not already
    if ($(this).css('position') != 'relative'){
      $(this).css('position','relative');
    }
  }
  else{
    type = 'margin-top';
  }
  $(item).css(
    type,
    $(parent).height()/2 - $(item).height()/2
  )
}

function roundCorners(item){
  $(item).css('border-radius',$(item).height())
}


ready = function() {
  roundCorners('.button');
  roundCorners('.round');
};

$(document).ready(ready);
$(document).on('page:load', ready);





/*
function calc(item,against,compare,operator,method){
  //calculate something in CSS
  //item is affected, against is what to combine, compare is width, height, etc. operator is add/sub/etc, method is CSS rule
  $(item).css(method,$(item) + against)
}
*/
