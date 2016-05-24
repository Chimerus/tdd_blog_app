class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  # default newest first
  default_scope { order(created_at: :desc)}
end
