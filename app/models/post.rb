class Post < ActiveRecord::Base

  validates_presence_of :title, :body
  validates :title, presence: true,
    length: {minimum: 5, maximum: 30 }
  validates :body, presence: true,
    length: {minimum: 200}

end
