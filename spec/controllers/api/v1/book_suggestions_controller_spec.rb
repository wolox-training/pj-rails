require 'rails_helper'

describe Api::V1::BooksuggestionsController, type: :controller do
  include_context 'Authenticated User'
  describe 'POST #create' do
    context 'When creating a valid user booksuggestion' do
      let!(:new_booksuggestion_attributes) { attributes_for(:booksuggestion, user_id: user.id) }
      it 'creates a new rent' do
        expect do
          post :create, params: { booksuggestion: new_booksuggestion_attributes }
        end.to change { Booksuggestion.count }.by(1)
      end

      it 'responds with 201 status' do
        post :create, params: { booksuggestion: new_booksuggestion_attributes }
        expect(response).to have_http_status(:created)
      end
    end

    context 'When creating an invalid user booksuggestion' do
      let!(:new_booksuggestion_attributes) { attributes_for(:booksuggestion, user_id: user.id, title: nil) }
      before do
        post :create, params: { booksuggestion: new_booksuggestion_attributes }
      end

      it 'doesn\'t create a new booksuggestion' do
        expect do
          post :create, params: { booksuggestion: new_booksuggestion_attributes }
        end.to change { Booksuggestion.count }.by(0)
      end

      it 'responds with 422 status' do
        expect(response).to have_http_status(:bad_request)
      end
    end
  end
end
