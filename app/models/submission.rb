class Submission < ApplicationRecord
   validates :word, presence: true, format: { with: /\A[a-zA-Z0-9]+\Z/, message: 'must contain no spaces' }
end
