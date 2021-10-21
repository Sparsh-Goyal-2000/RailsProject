class User < ApplicationRecord
  self.primary_key = 'code'

  has_many :posts, foreign_key: 'sender_id', dependent: :destroy
  has_many :articles, foreign_key: 'writer_id', dependent: :destroy

  has_many :posts_comments, through: :posts, source: :comments
  has_many :articles_comments, through: :articles, source: :comments

  has_many :comments, foreign_key: 'commenter_id', dependent: :destroy

end
