// on accounts_path, this button lets the user search for a particular member of lolward


$(function() {

 var sortPost = function() {
   var poster = $('#poster').val();
   if ($('#posts p').val().includes(poster)){
     return
   }
   else{
     $('#posts p').hide();
     $('.'+poster).show();
   }
 }

 $('#btn').on('click', sortPost)
})
