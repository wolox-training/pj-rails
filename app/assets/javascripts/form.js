$( document ).ready(function() {
  $("#suggestionForm").submit(function(e) {
    var url = "/api/v1/book_suggestions"; // the script where you handle the form input.
    $.ajax({
           type: "POST",
           url: url,
           data: $("#suggestionForm").serialize(), // serializes the form's elements.
           success: function(data)
           {
              $('#tableBookSuggestion tbody').append("<tr><td>" + data.title + "</td><td>" + data.link + "</td><td>");
              alert("Book suggestion succesfully created"); // show response from the php script.
           },
           error: function(data)
           {
              alert("Book suggestion not created")
           }
         });
   e.preventDefault(); // avoid to execute the actual submit of the form.
  });

});
