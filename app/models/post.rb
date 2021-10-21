class Post < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  has_many :comments, as: :commentable, dependent: :destroy

end
