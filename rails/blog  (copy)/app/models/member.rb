class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, :presence => true    
  validates :email, :presence => true
   has_attached_file :pic, :styles => 
           { :medium => "300x300>", :thumb => "100x100>" }
   has_attached_file :attach
               
end
