// Generated by CoffeeScript 1.8.0
(function() {
  var projectPage;

  projectPage = false;

  $("#logo").on("click", function() {
    if (projectPage) {
      console.log("MEOW");
      $("#projectLink").css("height", "100%");
      $("#projectLink").css("width", "100%");
      $("#contactLink").css("height", "100%");
      $("#contactLink").css("width", "100%");
      $("#projectPage").css("opacity", "0");
      return projectPage = false;

      /*
      		$("#projectLink").css "height", "0%"
      		$("#projectLink").css "width", "0%"
      		$("#contactLink").css "height", "0%"
      		$("#contactLink").css "width", "0%"
      		
      		$("#projectPage").css "height", "100%"
      		$("#projectPage").css "width", "100%"
      		
      		 *$("#testThing").html "<h2>YO BRO</h2>"	
      		projectPage = true
       */
    }
  });

  $("#projectLink").on("click", function() {
    $("#projectLink").css("height", "0%");
    $("#projectLink").css("width", "0%");
    $("#contactLink").css("height", "0%");
    $("#contactLink").css("width", "0%");
    $("#projectPage").css("opacity", "1");
    return projectPage = true;
  });

}).call(this);
