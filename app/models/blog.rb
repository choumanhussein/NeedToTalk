class Blog < ApplicationRecord
  belongs_to :user
 validates :content, presence: true, unless: :image?
 mount_uploader :image, ImageUploader
 has_many :comments, dependent: :destroy
 has_many :favorites, dependent: :destroy
 has_many :users, through: :favorites

end
