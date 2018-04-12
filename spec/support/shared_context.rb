
RSpec.shared_context 'Authenticated User' do
  let(:user) { create(:user) }
  
  before do
  #  request.headers['Authorization'] = access_token
  end
end

RSpec.configure do |rspec|
  rspec.include_context 'Authenticated User', :include_shared => true
end
