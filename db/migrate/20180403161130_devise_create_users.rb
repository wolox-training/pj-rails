<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
# frozen_string_literal: true

>>>>>>> 7bcf9a1... Devise implemented
=======
# frozen_string_literal: true

>>>>>>> 7bcf9a1... Devise implemented
=======
# frozen_string_literal: true

>>>>>>> 7bcf9a1... Devise implemented
class DeviseCreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      t.string :first_name,         null:false
      t.string :last_name,          null: false
=======
      t.string :first_name,         null:false, default: ""
      t.string :last_name,          null: false, default: ""
>>>>>>> 7bcf9a1... Devise implemented
=======
      t.string :first_name,         null:false, default: ""
      t.string :last_name,          null: false, default: ""
>>>>>>> 7bcf9a1... Devise implemented
=======
      t.string :first_name,         null:false, default: ""
      t.string :last_name,          null: false, default: ""
>>>>>>> 7bcf9a1... Devise implemented

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> 7bcf9a1... Devise implemented
=======
>>>>>>> 7bcf9a1... Devise implemented
      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 7bcf9a1... Devise implemented
=======
>>>>>>> 7bcf9a1... Devise implemented
=======
>>>>>>> 7bcf9a1... Devise implemented
      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
>>>>>>> 7bcf9a1... Devise implemented
=======
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
>>>>>>> 7bcf9a1... Devise implemented
=======
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
>>>>>>> 7bcf9a1... Devise implemented
  end
end
