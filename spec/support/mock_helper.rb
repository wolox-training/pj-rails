module MockHelper
  def mock_sign_in(user)
    allow_any_instance_of(described_class).to receive(:authenticate_user!)
    allow_any_instance_of(described_class).to receive(:current_user).and_return(user)
  end
end
