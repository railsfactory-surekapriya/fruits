class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :post
  has_attached_file :avatar

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :user_name, :presence => true
  validates :user_name, :uniqueness =>true
validates_attachment :avatar, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
