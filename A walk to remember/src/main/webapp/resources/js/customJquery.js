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
    
//    $("#viewMatchingEvents").click(function()
//    {
//    	alert("hi");
//    	var data = {}
//		data["goalDescription"] = $("#goalDescription").html();
//		alert(data);
//		$.ajax({
//			
//			type : "POST",
//			contentType : "application/json",
//			url : "fetchResults.htm",
//			data : JSON.stringify(data),
//			dataType : 'json',
//			timeout : 100000,
//			async: false,
//			success : function(data) {
//				alert("success");
//				console.log("SUCCESS: ", data);
//				display(data);
//			},
//			error : function(e) {
//				alert("error"+e.status);
//				console.log("ERROR: ", e);
//				
//			},
//			done : function(e) {
//				console.log("DONE");
//			}
//    	
//		});
//    
//    });
   
});
