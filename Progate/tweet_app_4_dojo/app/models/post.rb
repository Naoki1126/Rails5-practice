class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id, presence: true
  
  def user
    return Post.find_by(user_id: self.user_id)
  end
end
