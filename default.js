//메뉴창
$(document).ready(function(){
    $(".menu1").mouseover(function(){
        $(".menu_sub1").slideDown(200)
    });
    $(".navbar_item1").mouseleave(function(){
        $(".menu_sub1").slideUp(200)
    });

    $(".menu2").mouseover(function(){
        $(".menu_sub2").slideDown(200)
    });
    $(".navbar_item2").mouseleave(function(){
        $(".menu_sub2").slideUp(200)
    });

    $(".menu3").mouseover(function(){
        $(".menu_sub3").slideDown(200)
    });
    $(".navbar_item3").mouseleave(function(){
        $(".menu_sub3").slideUp(200)
    });
    
    $(".menu4").mouseover(function(){
        $(".menu_sub4").slideDown(200)
    });
    $(".navbar_item4").mouseleave(function(){
        $(".menu_sub4").slideUp(200)
    });
    
    $(".menu5").mouseover(function(){
        $(".menu_sub5").slideDown(200)
    });
    $(".navbar_item5").mouseleave(function(){
        $(".menu_sub5").slideUp(200)
    });
})

//슬라이드
$(document).ready(function(){
    let imgs;
    let img_count;
    let img_position = 0;

    imgs = $(".Slide ul");
    img_count = imgs.children().length;

    setInterval(function(){
        img_position++;
    
        if(img_position != 5){
            imgs.animate({left:'-=500px'});
        }
        
       else if(img_position == 5){
            imgs.animate({left:'+=2000px'});
            img_position = 0;
        }
    },2000);
})

document.addEventListener('scroll',function(){
    let currentScrollValue = document.documentElement.scrollTop;
    console.log(currentScrollValue);
})

function MonsterZ_introduce(){
    window.scrollTo({top:388, left:0, behavior:'smooth'});
}
function MonsterZ_Product_sell(){
    window.scrollTo({top:1137, left:0, behavior:'smooth'});
}
