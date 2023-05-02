  function validate(event){
			
	   		
	   		let uname=document.getElementById("answer").value;
	   	
	   		
  			if (uname != "") {
  				document.getElementById("error").innerHTML = "";
				}
			else {
 				document.getElementById("error").style.color = "red";
  				document.getElementById("error").innerHTML = "*Enter Your Answer";
  				event.preventDefault();
				}
  		
  			
				
  }
  document.addEventListener("DOMContentLoaded", () => {
    const start = new Date().getTime();
    window.addEventListener("beforeunload", () => {
        const end = new Date().getTime();
        const timeDiff = (end - start) / 1000
	
        console.log(timeDiff);
         localStorage.setItem("time", timeDiff);
    });
});
 