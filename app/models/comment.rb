class Comment < ActiveRecord::Base
  validates :text, length: {maximum: 500}, presence: true
end
