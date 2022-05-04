class User < ApplicationRecord
  before_save :addrandomusername
 mount_uploader :image, ImageUploader
 has_many :blogs
 has_many :favorites, dependent: :destroy
 #has_many :rails_admin, dependent: :nullify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable #:confirmable
  def online?
   updated_at > 10.minutes.ago
  end
  scope :online, lambda{ where("updated_at > ?", 10.minutes.ago) }

  def addrandomusername
    username = Faker::Internet.username
    self.name=username
  end

end
