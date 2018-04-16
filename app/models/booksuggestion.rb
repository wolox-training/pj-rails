class Booksuggestion < ApplicationRecord
  validates :user_id, :title, :author, :link, presence: true
  belongs_to :user
end
