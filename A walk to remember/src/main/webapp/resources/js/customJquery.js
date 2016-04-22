$(document).ready(function(){
	
	$(".addGoalsForm").css("display", "none");
//	$(".viewGoals").css("display", "none");
//	
//    $("#setGoal").click(function(){
//    	
//        $(".list").fadeOut(500);
//        $(".events").fadeOut(500);
//        $(".myTimeline").fadeIn(1000);
//        
//        
//    });
    
    $("#setGoal").click(function(){
    	
    	$(".memoriesTimeline").fadeOut(1000);
    	$(".addGoalsForm").fadeIn("slow");
    	$(".events").fadeOut(1000);
    	$(".list").fadeOut(1000);
    });
    
//    $("#goalSubmit").click(function(){
//    	$(".events").hide(1000);
//    	$(".list").hide(1000);
//    	$(".memoriesTimeline").hide(1000);
//    	$(".addGoalsForm").hide("slow");
//    	$(".viewGoals").show("slow");
//    });
    
    
    $("#viewGoals").click(function(){
    	alert("I am called");
    	$(".goalsTimeline").fadeIn(1000);
    	$(".memoriesTimeline").fadeOut(1000);
    });
});
