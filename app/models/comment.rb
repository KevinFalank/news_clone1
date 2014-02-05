class Comment < ActiveRecord::Base
  validates :text, length: {maximum: 500}, presence: true
  validates :user_id, presence: true
  validates :post_id, presence: true

end
