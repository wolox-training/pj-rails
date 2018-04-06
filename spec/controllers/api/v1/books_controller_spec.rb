require 'rails_helper'

describe Api::V1::BooksController, type: :controller do
  include_context 'Authenticated User'

    let!(:user) { create :user }
    let!(:book) { create :book }

  describe 'GET #index' do
    context 'When fetching all the books rents' do
      let!(:rents) { create_list(:rent, 3, book: book, user: user) }

      before do
        mock_sign_in(user)
        get :index
      end

      it 'responses with the books rents json' do
        expected = ActiveModel::Serializer::CollectionSerializer.new(
        rents, each_serializer: RentSerializer
        ).to_json
        expect(response_body.to_json) =~ JSON.parse(expected)
      end

      it 'responds with 200 status' do
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe 'GET #show' do
    context 'When fetching a book rent' do
      let!(:rent) { create(:rent, book: book) }

      before do
        get :show, params: { book_id: book.id, id: rent.id }
      end

      it 'responses with the book rent json' do
        expect(response_body.to_json).to eq RentSerializer.new(
          rent, root: false
        ).to_json
      end

      it 'responds with 200 status' do
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
