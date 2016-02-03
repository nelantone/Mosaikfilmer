class Movie < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :name, presence: true
  validates :category, presence: true
  validates :country, presence: true
  validates :year, format: { with: /\A(19|20)\d{2}\z/,
    message: "please write a correct year"}
  validates :rating, presence: true, format: { with: /\A-?[0-5]+\.[0-9]+\z/,
    message: "please write a correct rating (from 0.0 to 5.0)"}
end