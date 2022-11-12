class Review < ApplicationRecord
  belongs_to :flat
  validates :content, length: { minimum: 15 }
end
