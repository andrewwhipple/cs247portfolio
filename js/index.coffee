preload = (arrayOfImages) ->
	$(arrayOfImages).each( () ->
		$('<img />').attr('src',this).appendTo('body').css('display', 'none');
)


images = [
	"./images/background.png",
	"./images/contactlink.png",
	"./images/logo.png",
	"./images/project.png",
	"./images/projectlink.png",
	"./images/projectlinkhover.png",
	"./images/contactlinkhover.png",
	"./images/homebutton.png",
	"./images/homebuttonhover.png"
]

preload(images)


projectPage = false;
contactPage = false;


$("#logo").on "click", ->
	if projectPage
		console.log "MEOW"
		$("#projectLink").css "height", "100%"
		$("#projectLink").css "width", "100%"
		$("#contactLink").css "height", "100%"
		$("#contactLink").css "width", "100%"
		$("#contactLink").css "margin-top", "0%"
		$("#contactLink").css "margin-right", "0%"
		$("#projectLink").css "margin-top", "0"
		$("#projectLink").css "margin-left", "0"
		
		#$("#projectLink").css "opacity", "1"
		#$("#contactLink").css "opacity", "1"
		$(".projectPage").css "opacity", "0"
		$("#logo").css "margin-left", "0%"
		$("#logo").css "height", "100%"
		$("#logo").css "width", "100%"
		
		$("#contactPage").css "opacity", "0"
		$("#contactPage").css "height", "0%"
		$("#contactPage").css "width", "0%"
		
		#$("#projectPage").css "height", "0%"
		#$("#projectPage").css "width", "0%"
		#remove project page
		#$("#testThing").html "<h2>MEOW</h2>"	
		#$("#background").css "background-image", "url(./images/project.png)"
		projectPage = false
	else 
		$("#projectLink").css "height", "100%"
		$("#projectLink").css "width", "100%"
		$("#contactLink").css "height", "100%"
		$("#contactLink").css "width", "100%"
		$("#contactLink").css "margin-top", "0%"
		$("#contactLink").css "margin-right", "0%"
		$("#projectLink").css "margin-top", "0"
		$("#projectLink").css "margin-left", "0"
		$("#logo").css "margin-left", "0%"
		$("#logo").css "height", "100%"
		$("#logo").css "width", "100%"
		
		$("#contactPage").css "opacity", "0"
		$("#contactPage").css "height", "0%"
		$("#contactPage").css "width", "0%"
		#
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
	if projectPage or contactPage
		$("#projectLink").css "height", "100%"
		$("#projectLink").css "width", "100%"
		$("#contactLink").css "height", "100%"
		$("#contactLink").css "width", "100%"
		$("#contactLink").css "margin-top", "0%"
		$("#contactLink").css "margin-right", "0%"
		$("#projectLink").css "margin-top", "0"
		$("#projectLink").css "margin-left", "0"
		$("#logo").css "margin-left", "0%"
		$("#logo").css "height", "100%"
		$("#logo").css "width", "100%"
		#$("#projectPage").css "height", "100%"
		#$("#projectPage").css "width", "100%"
		$(".projectPage").css "opacity", "0"
		#$("#contactLink").css "opacity", "1"
		#$("#projectLink").css "opacity", "1"
		$("html, body").animate {scrollTop: 0}, 1400
	     
	
		projectPage = contactPage = false;
		
$("#projectLink").on "click", ->
	$(this).attr "src", './images/projectlink.png'
	#$("#projectLink").css "transition", "height 5s, width 5s, margin 2s"
	
	
	
	
	
	$("#projectLink").css "height", "0%"
	$("#projectLink").css "width", "0%"
	
	$("#projectLink").css "margin-top", "0%"
	$("#projectLink").css "margin-left", "0%"
	
	
	$("#contactLink").css "height", "60%"
	$("#contactLink").css "width", "60%"
	$("#contactLink").css "margin-top", "-43%"
	$("#contactLink").css "margin-right", "10%"
	$("#contactPage").css "margin-top", "0"
	$("#contactPage").css "opacity", "0"
	$("#contactPage").css "height", "0"
	$("#contactPage").css "width", "0"
	#$("#projectPage").css "height", "100%"
	#$("#projectPage").css "width", "100%"
	$(".projectPage").css "opacity", "1"
	$("#logo").css "margin-left", "0%"
	$("#logo").css "float", "left"
	$("#logo").css "height", "60%"
	$("#logo").css "width", "60%"
	console.log ("DOWN HERE")
	#$("html, body").animate {scrollTop: projectOffset.top()}, 1400
	#$("#projectLink").css "opacity", "0"
	#$("#contactLink").css "opacity", "0"
	projectPage = true;
	
$("#contactLink").on "click", ->
	$(this).attr "src", './images/contactlink.png'
	$("#projectLink").css "height", "60%"
	$("#projectLink").css "width", "60%"
	$("#contactLink").css "height", "0%"
	$("#contactLink").css "width", "0%"
	$("#contactLink").css "margin-top", "0%"
	$("#contactLink").css "margin-right", "0%"
	$("#projectLink").css "margin-top", "-43%"
	#$("#projectLink").css "margin-left", "140%"
	
	$("#logo").css "margin-left", "40%"
	#$("#logo").css "float", "right"
	
	#$("#projectPage").css "height", "100%"
	#$("#projectPage").css "width", "100%"
	$("#contactPage").css "opacity", "1"
	$("#contactPage").css "height", "100%"
	$("#contactPage").css "width", "100%"
	$("#contactPage").css "margin-top", "-350%"
	
	$("#logo").css "height", "60%"
	$("#logo").css "width", "60%"
	
	if projectPage
		$(".projectPage").css "opacity", "0"
	contactPage = true;
	console.log ("SWAGENDAZ")	