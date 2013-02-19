class Cliente < ActiveRecord::Base
  attr_accessible :cel, :email, :nome, :tel
  
  has_many :consumos
  has_many :produtos, :through => :consumos
  
  validates_presence_of :cel, :email, :nome, :tel
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates_uniqueness_of :email
  
end
