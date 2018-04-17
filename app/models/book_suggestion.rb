class BookSuggestion < ApplicationRecord
  validates :title, :author, :link, presence: true
  belongs_to :user
end
