$( document ).ready(function() {
  $("#bookForm").submit(function(e) {
    var url = "/api/v1/books/info"; // the script where you handle the form input.
    $.ajax({
           type: "GET",
           url: url,
           data: $("#bookForm").serialize(),
           dataType: 'json',
           success: function(response)
           {
              $("#link").text(response[Object.keys(response)[0]].url);
              $("#name").text(response[Object.keys(response)[0]].title);
              $("#author").text(response[Object.keys(response)[0]].authors[0].name);
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
