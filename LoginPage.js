  function validate(event){
			
	   		
	   		let uname=document.getElementById("uname").value;
	   		let pass=document.getElementById("pass").value;
	   		
  			if (uname != "") {
  				document.getElementById("uerror").innerHTML = "";
				}
			else {
 				document.getElementById("uerror").style.color = "red";
  				document.getElementById("uerror").innerHTML = "*Enter Your User Name";
  				event.preventDefault();
				}
  			if (pass != "") {
  				document.getElementById("perror").innerHTML = "";
				}
			else {
 				document.getElementById("perror").style.color = "red";
  				document.getElementById("perror").innerHTML = "*Enter Your Password";
  				event.preventDefault();
				}
  			
				
  }