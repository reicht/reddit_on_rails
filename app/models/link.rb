class Link < ActiveRecord::Base
  has_many :likes
  belongs_to :user

  validates :title, presence: true
  validates :link, presence: true
  validates :user_id, presence: true

  def Link.sort_links
    joins(:likes)
      .group("link_id")
      .order("COUNT(likes.id) DESC")
  end
end
