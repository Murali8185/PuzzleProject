  function validate(event){
			
	   		let uname=document.getElementById("uname").value;
	   		let email=document.getElementById("email").value;
	   		let pass=document.getElementById("pass").value;
	   		let cpass=document.getElementById("cpass").value;
  			if (uname != "") {
      				document.getElementById("uerror").innerHTML = "";
  				}
  			else {
     				document.getElementById("uerror").style.color = "red";
      				document.getElementById("uerror").innerHTML = "*Enter Your First Name";
      				event.preventDefault();
  				}
  			if (email != "") {
  				document.getElementById("ferror").innerHTML = "";
				}
			else {
 				document.getElementById("ferror").style.color = "red";
  				document.getElementById("ferror").innerHTML = "*Enter Your Last Name";
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
  			if (cpass != "") {
  				document.getElementById("cperror").innerHTML = "";
				}
			else {
 				document.getElementById("cperror").style.color = "red";
  				document.getElementById("cperror").innerHTML = "*Confirm must be same as password";
  				event.preventDefault();
				}
				
  }