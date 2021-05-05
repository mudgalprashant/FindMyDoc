
// password validation
function validatePassword(){
    let form =document.f1; 
var firstpassword=form.password.value;  
var secondpassword=form.password2.value;  
  
if(firstpassword!==secondpassword){    
alert("password must be same!");  
form.password.focus();
return;  
}  
}
function ValidationGender(){
	var gen=document.no.gender.value;
	if(!(gen==='M'||gen==='F'||gen==='T'||gen==='m'||gen==='f'||gen==='t'))
	{
		alert("Gender must be M / F / T ");
		return false;
	}
}
// email validation
function validateEmail(){
    let form =document.f1; 
var x=form.email.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Email Already Registered");
form.email.focus();
  return;  
  }  
  }
//mobile validation
function validateMobile(){
    let form =document.f1; 
if( form.mobile.value === "" || isNaN( form.mobile.value) || form.mobile.value.length !== 10 )
   {
     alert( "Enter valid Mobile No. of length 10." );
     form.mobile.focus() ;
     return;
   }
return true;

}

