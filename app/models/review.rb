class Review < ApplicationRecord
  belongs_to :flat
  validates :content, lenght: {minimum: 15}
end
