class Cliente < ActiveRecord::Base
  attr_accessible :cel, :email, :nome, :tel
  
  has_many :consumos
  has_many :produtos, :through => :consumos
end
