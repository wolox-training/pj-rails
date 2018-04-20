require 'httparty'

class OpenLibraryService
  include HTTParty
  debug_output $stdout

  def initialize(params)
    @isbn = params[:isbn]
  end

  def book_info(params)
    response = HTTParty.get('http://openlibrary.org/api/books', query:
      { 'bibkeys' => params[:isbn],
        'format' => 'json',
        'jscmd' => 'data' })
    response.parsed_response
  end
end
