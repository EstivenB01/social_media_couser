class Comment < ApplicationRecord
    belongs_to :post
    validates :conten, presence: true 
  end