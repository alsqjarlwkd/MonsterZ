//메뉴창
$(document).ready(function(){
    $(".menu1").mouseover(function(){
        $(".menu_sub1").slideDown(200)
    });
    $(".menu1").click(function(){
        $(".menu_sub1").slideUp(200)
    });

    $(".menu2").mouseover(function(){
        $(".menu_sub2").slideDown(200)
    });
    $(".menu2").click(function(){
        $(".menu_sub2").slideUp(200)
    });

    $(".menu3").mouseover(function(){
        $(".menu_sub3").slideDown(200)
    });
    $(".menu3").click(function(){
        $(".menu_sub3").slideUp(200)
    });
    
    $(".menu4").mouseover(function(){
        $(".menu_sub4").slideDown(200)
    });
    $(".menu4").click(function(){
        $(".menu_sub4").slideUp(200)
    });
    
    $(".menu5").mouseover(function(){
        $(".menu_sub5").slideDown(200)
    });
    $(".menu5").click(function(){
        $(".menu_sub5").slideUp(200)
    });
})

//슬라이드
$(document).ready(function(){
    let imgs;
    let img_count;
    let img_postion = 0;

    imgs = $(".Slide ul");
    img_count = imgs.children().length;


   setInterval(function(){
        imgs.animate({left:`-=500px`});
        img_postion++;

        if(img_postion == 5){
            imgs.animate({left:`+=2500px`});
            img_postion = 0;
        }
    },2000);
})