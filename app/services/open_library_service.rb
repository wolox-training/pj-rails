require 'httparty'

class OpenLibraryService
  include HTTParty
  debug_output $stdout

  def book_info(isbn)
    response = HTTParty.get('http://openlibrary.org/api/books', query:
      { 'bibkeys' => isbn,
        'format' => 'json',
        'jscmd' => 'data' })
    response.parsed_response
  end
end
