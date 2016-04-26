$(document).ready(function(){
//	alert("hi I am in main");
	$(".addGoalsForm").css("display", "none");

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
    	
    	$(".goalsTimeline").fadeIn(1000);
    	$(".memoriesTimeline").fadeOut(1000);
    });
    
    
    $("#acceptEvent").click(function(){
    	
    	var data=$(".eventId");
    	console.log(data);
    	
    	$.ajax({
			
			type:"POST",
			url:"acceptEvent.htm",
			data: {eventId:$(".eventId").html()},
			success : function(result){
//				alert(result);
				if(result=="success")
					{
//						alert($(".successMessage").attr("class"));
						$(".successMessage").text("You have enrolled for the event");
						$("#acceptEvent").css("color","black");
						$("#acceptEvent").attr("disabled", "disabled");
						$("#deleteEvent").attr("disabled", "disabled")
						
						
					}
				
				else if(result=="alreadyAccepted")
					{
					$(".successMessage").text("You have already accepted the event");
					$("#acceptEvent").remove();
					}
				
			},
			error: function(jqXHR){
				alert("Problem occured while completed adventure process" + jqXHR.status);
			}
			
		});
    	
    	
    	
    	
    	
    });

});
