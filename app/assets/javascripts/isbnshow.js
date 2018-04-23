$( document ).ready(function() {
  $("#bookForm").submit(function(e) {
    var url = "/api/v1/books/info"; // the script where you handle the form input.
    $.ajax({
           type: "GET",
           url: url,
           data: $("#bookForm").serialize(),  // serializes the form's elements.
           success: function(data)
           {
              alert("Book found"); // show response from the php script.
              debugger
           },
           error: function(data)
           {
              alert("Nothing found")
           }
         });
   e.preventDefault(); // avoid to execute the actual submit of the form.
 });

});
