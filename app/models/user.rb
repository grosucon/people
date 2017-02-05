class User < ActiveRecord::Base
  has_many :posts
  validates :name, length: { maximum: 100, too_long: "%{count} characters is the maximum allowed" }
  validates :name, length: { minimum: 2, too_short: "%{count} characters is the minimum allowed" }

  def main_posts
    self.posts.where(parent_id: nil)
  end

end