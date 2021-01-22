<!DOCTYPE html "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

 <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Google Books Embedded Viewer API Example</title>
    <script type="text/javascript" src="https://www.google.com/books/jsapi.js"></script>
    <script type="text/javascript">
      google.books.load();

 

      function initialize() {
        var viewer = new google.books.DefaultViewer(document.getElementById('viewerCanvas'));
        viewer.load('ISBN:9781500130886');
      }

 

      google.books.setOnLoadCallback(initialize);
    </script>
  </head>
  <body>
  
  
  
  
    <div id="viewerCanvas" style="width: 600px; height: 500px"></div>
    
    
    
    
  </body>
  
  <script type="text/javascript">
  google.books.load({"language": "pt-BR"});
</script>

</html>