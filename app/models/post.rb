class Post < ApplicationRecord

  scope :hidden_posts, -> { where(hidden: true) }
  scope :with_details, -> { includes(:user, :likes, :reposts, images_attachments: :blob) }

  belongs_to :user
  belongs_to :page, optional: true
  belongs_to :group, optional: true

  validates :title, presence: true
  validates :description, presence: true
  #validates :images, presence: true

  has_many_attached :images
  has_many :hidden_posts

  # for user reactions
  has_many :user_reactions, as: :reactable

  # for repost the post
  has_many :reposts, dependent: :destroy
  has_many :comments, as: :commentable

  # for sharing the post
  has_many :shares, dependent: :destroy

  # for posts likes
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  include Notificable

  # for notification
  def user_ids
    User.where(id: user.connected_user_ids).ids
    #User.all.ids
  end

  # for hide & unhide the post
  def hide
    update(hidden: true)
  end

  def unhide
    update(hidden: false)
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "title", "updated_at", "user_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["comments", "images_attachment", "image_blob", "user"]
  end

  def user_reactions_count(reaction_type)
    user_reactions.where(reaction_type: reaction_type).count
  end
  
end
