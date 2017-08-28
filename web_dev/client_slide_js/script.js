console.log("the script is working");

function addBlueBorder(){
	var photo = document.getElementById('car-photo')
	photo.style.border = "2px solid blue"
}
var photo = document.getElementById('car-photo')
photo.addEventListener("click",addBlueBorder); 