class Quiz < ApplicationRecord
  belongs_to :employer
  
  has_many :questions
end
