class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[5.1]
  def change
    ## Required
    add_column :users, :provider, :string, :null => false, :default => "email"
    add_column :users, :uid, :string, :null => false, :default => ""
    add_column :users, :locale, :string, :null => false, :default => "en"
    add_column :users, :confirmation_token,   :string
    add_column :users, :confirmed_at,         :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email,    :string

    ## Recoverable
    add_column :users, :allow_password_change, :boolean, :default => false

    ## User Info
    add_column :users, :image, :string

    ## Tokens
    add_column :users, :tokens, :json

    add_index :users, [:uid, :provider],     unique: true

  end
end
