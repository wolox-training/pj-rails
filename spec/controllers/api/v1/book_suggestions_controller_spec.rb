require 'rails_helper'

describe Api::V1::BookSuggestionsController, type: :controller do
  include_context 'Authenticated User'
  describe 'POST #create' do
    context 'When creating a valid user booksuggestion' do
      let!(:new_book_suggestion_attributes) { attributes_for(:book_suggestion, user_id: user.id) }
      it 'creates a new rent' do
        expect do
          post :create, params: { book_suggestion: new_book_suggestion_attributes }
        end.to change { BookSuggestion.count }.by(1)
      end

      it 'responds with 201 status' do
        post :create, params: { book_suggestion: new_book_suggestion_attributes }
        expect(response).to have_http_status(:created)
      end
    end

    context 'When creating an invalid user booksuggestion' do
      let!(:new_book_suggestion_attributes) { attributes_for(:book_suggestion, user_id: user.id, title: nil) }
      before do
        post :create, params: { book_suggestion: new_book_suggestion_attributes }
      end

      it 'doesn\'t create a new booksuggestion' do
        expect do
          post :create, params: { book_suggestion: new_book_suggestion_attributes }
        end.to change { BookSuggestion.count }.by(0)
      end

      it 'responds with 422 status' do
        expect(response).to have_http_status(:bad_request)
      end
    end
  end
end
