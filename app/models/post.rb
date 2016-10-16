class Post < ActiveRecord::Base

  has_many :comments, dependent: :destroy

  validates :title, presence: true,
    length: {in: 5..30}
  validates :body, presence: true,
    length: {minimum: 200}

  mount_uploader :image, ImageUploader
end
