function formValidation() 
{ 
var uid = document.form1.userid; 
var passid = document.form1.passid; 
var uname = document.form1.username; 
var uadd = document.form1.address; 
var uzip = document.form1.zip; 
var uemail = document.form1.email; 
if(userid_validation(uid,5,12)) 
{ 
if(userid_validation(passid,7,12)) 
{ 
if(allLetter(uname)) 
{ 
if(alphanumeric(uadd)) 
{ 
if(allnumeric(uzip)) 
{ 
if(ValidateEmail(uemail)) 
{ 
} 
} 
} 
} 
} 
} 
return false; 
} 
function userid_validation(uid,mx,my) 
{ 
var uid_len = uid.value.length;  
if (uid_len == 0 || uid_len >= my || uid_len < mx) 
{ 
alert("It should not be empty / length be between "+mx+" to "+my); 
uid.focus(); 
return false; 
} 
return true; 
} 
function allLetter(uname) 
{ 
var letters = /^[A-Za-z]+$/; 
if(uname.value.match(letters)) 
{ 
return true; 
} 
else 
{ 
alert('Please input alphabet characters only'); 
uname.focus(); 
return false; 
} 
} 
function alphanumeric(uadd) 
{ 
var letters = /^[0-9a-zA-Z]+$/; 
if(uadd.value.match(letters)) 
{ 
return true; 
} 
else 
{ 
alert('Please input alphanumeric characters only'); 
uadd.focus(); 
return false; 
} 
} 
function allnumeric(uzip) 
{ 
var numbers = /^[0-9]+$/; 
if(uzip.value.match(numbers)) 
{ 
return true; 
} 
else 
{ 
alert('Please input numeric characters only'); 
uzip.focus(); 
return false; 
} 
} 
function ValidateEmail(uemail) 
{ 
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; 
if(uemail.value.match(mailformat)) 
{ 
return true; 
} 
else 
{ 
alert("You have entered an invalid email address!"); 
uemail.focus(); 
return false; 
} 
}