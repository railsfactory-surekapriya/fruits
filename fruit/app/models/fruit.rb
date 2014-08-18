class Fruit < ActiveRecord::Base
belongs_to :member

  validates :name, :colour, :presence => true
  validates :name, :length => { :minimum => 2}
  validates :name, :uniqueness => { :message => "already taken"}
  has_many :comments, :dependent => :destroy
end

