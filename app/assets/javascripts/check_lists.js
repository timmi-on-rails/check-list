$(
     function(){
          $(document).bind("ajax:success",
                   function(evt, data, status, xhr){
                    location.reload();
                    
                        //this assumes the action returns an HTML snippet
           }).bind("ajax:error", function(evt, data, status, xhr){
                    //do something with the error here
                    alert('error');
           });
});
