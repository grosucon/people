class Post < ActiveRecord::Base
  belongs_to :user

  def parent
    Post.find(self.parent_id) if self.parent_id.present?
  end

  def parent?
    if self.parent_id.nil?
      true
    else
      false
    end
  end

  def childrens
    Post.all.where(parent_id: self.id)
  end

end
