
RSpec.shared_context 'Authenticated User' do
  let(:user) { create(:user) }
  #  let!(:access_data) { user.create_new_auth_token }
  #let!(:access_token) { access_data[:token] }
  #let!(:renew_id) { access_data[:renew_id] }

  before do
  #  request.headers['Authorization'] = access_token
  end
end

RSpec.configure do |rspec|
  rspec.include_context 'Authenticated User', :include_shared => true
end
