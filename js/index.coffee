preload = (arrayOfImages) ->
	$(arrayOfImages).each( () ->
		$('<img />').attr('src',this).appendTo('body').css('display', 'none');
)


images = [
	"./images/background.png",
	"./images/contactlink.png",
	"./images/logo.png",
	"./images/project.png",
	"./images/projectlink.png"
]

preload(images)


projectPage = false;


$("#logo").on "click", ->
	if projectPage
		console.log "MEOW"
		$("#projectLink").css "height", "100%"
		$("#projectLink").css "width", "100%"
		$("#contactLink").css "height", "100%"
		$("#contactLink").css "width", "100%"
		
		$(".projectPage").css "opacity", "0"
		
		#$("#projectPage").css "height", "0%"
		#$("#projectPage").css "width", "0%"
		#remove project page
		#$("#testThing").html "<h2>MEOW</h2>"	
		#$("#background").css "background-image", "url(./images/project.png)"
		projectPage = false
	#else
		#console.log "CLICKED"
		###
		$("#projectLink").css "height", "0%"
		$("#projectLink").css "width", "0%"
		$("#contactLink").css "height", "0%"
		$("#contactLink").css "width", "0%"
		
		$("#projectPage").css "height", "100%"
		$("#projectPage").css "width", "100%"
		
		#$("#testThing").html "<h2>YO BRO</h2>"	
		projectPage = true
		###

$('#projectLink').hover( 
    -> $(this).attr "src", './images/projectlinkhover.png',
    -> $(this).attr "src", './images/projectlink.png'
)


$('#contactLink').hover( 
    -> $(this).attr "src", './images/contactlinkhover.png',
    -> $(this).attr "src", './images/contactlink.png'
)

$('#bottonHomeButton').hover( 
    -> $(this).attr "src", './images/homebuttonhover.png',
    -> $(this).attr "src", './images/homebutton.png'
)

	
$("#bottonHomeButton").on "click", ->
	if projectPage
		$("#projectLink").css "height", "100%"
		$("#projectLink").css "width", "100%"
		$("#contactLink").css "height", "100%"
		$("#contactLink").css "width", "100%"
	
		#$("#projectPage").css "height", "100%"
		#$("#projectPage").css "width", "100%"
		$(".projectPage").css "opacity", "0"
		$("html, body").animate {scrollTop: 0}, 1400
	     
	
		projectPage = false;
		
$("#projectLink").on "click", ->
	$(this).attr "src", './images/projectlink.png'
	$("#projectLink").css "height", "0%"
	$("#projectLink").css "width", "0%"
	$("#contactLink").css "height", "0%"
	$("#contactLink").css "width", "0%"
	
	#$("#projectPage").css "height", "100%"
	#$("#projectPage").css "width", "100%"
	$(".projectPage").css "opacity", "1"
	
	projectPage = true;