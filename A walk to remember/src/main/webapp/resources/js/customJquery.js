$(document).ready(function(){
	
	$(".addGoalsForm").css("display", "none");

    $("#setGoal").click(function(){
    	
    	$(".memoriesTimeline").fadeOut(1000);
    	$(".addGoalsForm").fadeIn("slow");
    	$(".events").fadeOut(1000);
    	$(".list").fadeOut(1000);
    });
    
    
    $("#viewGoals").click(function(){
    	
    	$(".goalsTimeline").fadeIn(1000);
    	$(".memoriesTimeline").fadeOut(1000);
    });
    
    
    $("#acceptEvent").click(function(){
    	
    	var data=$(".eventId");
    	var userObject=$("#uObj");
    	$.ajax({
			
			type:"POST",
			url:"acceptEvent.htm",
			data: {eventId:$(".eventId").html(),userId:$("#uObj").val()},
			success : function(result){
				if(result=="success")
					{
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
    
$("#deleteEvent").click(function(){
    	
    	var data=$(".eventId");
    	var userObject=$("#uObj");
    	
    	$.ajax({
			
			type:"POST",
			url:"deleteEvent.htm",
			data: {eventId:$(".eventId").html(),userId:$("#uObj").val()},
			success : function(result){
				if(result=="declined")
					{
						$(".successMessage").text("You have removed this event from your list");
						$("#deleteEvent").remove();
						$("#acceptEvent").remove();
	
					}

			},
			error: function(jqXHR){
				alert("Problem occured while completed adventure process" + jqXHR.status);
			}
			
		});
    	
    });


$("#userRegusername").keyup(function(){
	var data=$("#userRegusername").val();
	
	$.ajax({
		
		type:"POST",
		url:"checkValidUserName.htm",
		data: {userName:$("#userRegusername").val()},
		success : function(result){
			
			if(result=="notUnique")
				{
					$("#userNameError").text("Username already exists");
					$("#userRegSubmit").attr("disabled","disabled");
				}
			
			if(result=="unique")
				{
				$("#userNameError").text("");
				$("#userRegSubmit").removeAttr("disabled");
				}
		},
		error: function(jqXHR){
			alert("Problem occured while completed adventure process" + jqXHR.status);
		}
		
	});

});



$("#usernameAdvReg").keyup(function(){
	var data=$("#usernameAdvReg").val();
	
	$.ajax({
		
		type:"POST",
		url:"checkValidAdvName.htm",
		data: {userName:$("#usernameAdvReg").val()},
		success : function(result){
			
			if(result=="notUnique")
				{
				
					$("#advRegUserName").text("Username already exists");
					$("#advRegistrationSubmit").attr("disabled","disabled");
				}
			
			if(result=="unique")
				{
				
				$("#advRegUserName").text("");
				$("#advRegistrationSubmit").removeAttr("disabled");
				}
		},
		error: function(jqXHR){
			alert("Problem occured while completed adventure process" + jqXHR.status);
		}
		
	});

});

$("#usernameAdminReg").keyup(function(){
	var data=$("#usernameAdminReg").val();
	
	$.ajax({
		
		type:"POST",
		url:"checkValidAdvName.htm",
		data: {userName:$("#usernameAdminReg").val()},
		success : function(result){
			
			if(result=="notUnique")
				{
				
					$("#adminRegUserName").text("Username already exists");
					$("#adminRegistrationSubmit").attr("disabled","disabled");
				}
			
			if(result=="unique")
				{
				
				$("#adminRegUserName").text("");
				$("#adminRegistrationSubmit").removeAttr("disabled");
				}
		},
		error: function(jqXHR){
			alert("Problem occured while completed adventure process" + jqXHR.status);
		}
		
	});

});
//$("#loginSubmit").click(function(){
//
//	var userName=$("#loginuname");
//	var password=$("#loginpassword");
//	
//	
//	$.ajax({
//		
//		type:"POST",
//		url:"login.htm",
//		data: {userName:$("#loginuname").val(),password:$("#loginpassword").val()},
//		success : function(result){
//			if(result=="validCredentials")
//				{
//					$("#credentialsStatus").text("Invalid username and password");
//				}
//			else 
//				{
//				$("#credentialsStatus").text("Valid username and password");
//				}
//
//		},
//		error: function(jqXHR){
//			alert("Problem occured while completed adventure process" + jqXHR.status);
//		}
//		
//	});
//	
//});


});




