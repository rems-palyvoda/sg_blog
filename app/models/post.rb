class Post < ActiveRecord::Base

  validates :title, presence: true,
    length: {in: 5..30}
  validates :body, presence: true,
    length: {minimum: 200}

end
