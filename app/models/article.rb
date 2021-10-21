class Article < ApplicationRecord
  belongs_to :writer, class_name: 'User'
  has_many :comments, as: :commentable, dependent: :destroy

end
