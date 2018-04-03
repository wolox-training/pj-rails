class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[5.1]
  def change
    ## Required
    add_column :users, :provider, :string, :null => false, :default => "email"
    add_column :users, :uid, :string, :null => false, :default => ""

    ## Recoverable
    add_column :users, :allow_password_change, :boolean, :default => false

<<<<<<< HEAD
=======
    ## Lockable
    # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
    # t.string   :unlock_token # Only if unlock strategy is :email or :both
    # t.datetime :locked_at

>>>>>>> 9a9b2e1... implemeneted devise-token-auth
    ## User Info
    add_column :users, :image, :string

    ## Tokens
    add_column :users, :tokens, :json

<<<<<<< HEAD
    add_index :users, [:uid, :provider],     unique: true
=======

    add_index :users, [:uid, :provider],     unique: true
    # add_index :users, :unlock_token,       unique: true
>>>>>>> 9a9b2e1... implemeneted devise-token-auth
  end
end
