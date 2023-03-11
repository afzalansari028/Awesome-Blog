<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Upload</title>
</head>
<style><%@include file="/WEB-INF/upload.css"%></style>
<body>
    
    <div class="header">
    <h1>UPLOAD</h1>    
    </div>
    <center>
    

<form action="do_upload" method="post" enctype="multipart/form-data">        

<p>Upload an Image</p>
    <input type="file" id="file" name="type"
        onchange="return fileValidation()" />
    <!-- Image preview -->
    <div id="imagePreview"></div>
    <script>
        function fileValidation() {
            var fileInput = 
                document.getElementById('file');
              
            var filePath = fileInput.value;
          
            // Allowing file type
            var allowedExtensions = 
                    /(\.jpg|\.jpeg|\.png|\.gif)$/i;
              
            if (!allowedExtensions.exec(filePath)) {
                alert('Invalid file type');
                fileInput.value = '';
                return false;
            } 
            else 
            {
              
                // Image preview
                if (fileInput.files && fileInput.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        document.getElementById(
                            'imagePreview').innerHTML = 
                            '<img src="' + e.target.result
                            + '"/>';
                    };
                      
                    reader.readAsDataURL(fileInput.files[0]);
                }
            }
        }
               
        </script>
      <h1 style="color: white;">Write about your Post </h1>

        <textarea id="w3review" name="w3review" rows="8" cols="100">
           </textarea>
        <br><br>
        <button type="submit">Upload</button>
        
      </form> 
   </body> 
</html>