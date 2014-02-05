class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates :text, length: {maximum: 500}, presence: true
  validates :user_id, presence: true
  validates :post_id, presence: true

end
