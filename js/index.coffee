projectPage = false;


$("#logo").on "click", ->
	if projectPage
		console.log "MEOW"
		$("#projectLink").css "height", "100%"
		$("#projectLink").css "width", "100%"
		$("#contactLink").css "height", "100%"
		$("#contactLink").css "width", "100%"
		
		$("#projectPage").css "opacity", "0"
		
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
		
$("#projectLink").on "click", ->
	$("#projectLink").css "height", "0%"
	$("#projectLink").css "width", "0%"
	$("#contactLink").css "height", "0%"
	$("#contactLink").css "width", "0%"
	
	#$("#projectPage").css "height", "100%"
	#$("#projectPage").css "width", "100%"
	$("#projectPage").css "opacity", "1"
	
	projectPage = true;