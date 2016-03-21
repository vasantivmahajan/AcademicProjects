<% 

String [] zipcode = new String[5];
zipcode[0] = "400610";
zipcode[1] = "380001";
zipcode[2] = "411001";
zipcode[3] = "403001";
zipcode[4] = "400068";
   
String [] city = new String[5];
city[0] = "Mumbai";
city[1] = "Ahemdabad";
city[2] = "Pune";
city[3] = "Panaji";
city[4] = "Mumbai";
   
String [] state = new String[5];
state[0] = "Maharashtra";
state[1] = "Gujarat";
state[2] = "Maharashtra";
state[3] = "Goa";
state[4] = "Maharashtra"; 
   
String zip = request.getParameter("q");

	
	String result = "<UL>";
    int i=0;
   
   for(i=0;i<5;i++)
    {
        if(zipcode[i].contains(zip))
        {
            
            result += "<LI class='zipcodeFromJSP'>" +zipcode[i] + "</LI>";
            result += "<LI class='cityFromJSP'>" +city[i] +"</LI>";
            result += "<LI class='stateFromJSP'>" +state[i] +"</LI>";
            
        }
    }

	result += "</UL>";
	
	out.println(result); 

%>