$('#date').blur(function(){
	var obj = $(this);
	if(!obj.val()){
		$(this).addClass('show_placeholder');
	}
    else{
		$(this).removeClass('show_placeholder');
	}
});

$('#date').focus(function(){
	$(this).removeClass('show_placeholder');
})


function myFunction1() {
	document.getElementById("myDropdown").classList.toggle("show");
}
  
window.onclick = function(event) {
	if (!event.target.matches('.dropbtn')) {
	  var dropdowns = document.getElementsByClassName("dropdown-content");
	  var i;
	  for (i = 0; i < dropdowns.length; i++) {
		var openDropdown = dropdowns[i];
		if (openDropdown.classList.contains('show')) {
		  openDropdown.classList.remove('show');
		}
	  }
	}
}
