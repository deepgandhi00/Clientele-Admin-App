/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function filepreview(objFileInput)
{
            if (objFileInput.files[0]) {
                var filename=objFileInput.files[0];
                var filetype=filename.type;
//                alert(filetype);
                var exeten=filetype.split('/').pop().toLowerCase();
//                alert(exeten);
                var allowedexe=new Array("jpeg","jpg","png","gif");
                if($.inArray(exeten,allowedexe)===-1){
                    alert("upload allowed file types only");
                }
                else{
                var fileReader = new FileReader();
                fileReader.onload = function (e)
                {
//                    image_name=e.target.result;
                    
                    $('#image_upload_preview').attr('src',e.target.result);
                    $('#image_upload_preview').attr('height','150px');
                    $('#image_upload_preview').attr('width','200px');
                }
            }
                fileReader.readAsDataURL(objFileInput.files[0]);
            }
}
        
        function fileupload(form_id,custom_function)
            {
                var f=document.getElementById(form_id);
                
               // alert(form_id);
                var formData=new FormData(f);
                //alert(formData);
                $.ajax({
                    type: "POST",
                    url: 'images_upload.jsp',
                    data: formData,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function(data) 
                    {//alert();
                       var a=data.trim();
                        //alert(custom_function);
                        custom_function(a);
                    },
                    error: function(data) 
                    {
                        alert("error='"+data+"'");
                    }
                })
            }