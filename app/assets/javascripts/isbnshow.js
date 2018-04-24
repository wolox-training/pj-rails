$( document ).ready(function() {
  $("#bookForm").submit(function(e) {
    var url = "/api/v1/books/info"; // the script where you handle the form input.
    $.ajax({
           type: "GET",
           url: url,
           data: $("#bookForm").serialize(),  // serializes the form's elements.
           success: function(response)
           {
              debugger
              name.text_field = response.title
              link.text_field = response.image
              alert("ISBN Book found"); // show response from the php script.
           },
           error: function(error)
           {
              alert("Nothing found through ISBN")
           }
         });
   e.preventDefault(); // avoid to execute the actual submit of the form.
 });

});
