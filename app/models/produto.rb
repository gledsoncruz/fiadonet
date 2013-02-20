class Produto < ActiveRecord::Base
  attr_accessible :descricao, :valor
  
  has_many :consumos
  has_many :clientes, :through => :consumos
  
  validates_presence_of :descricao, :valor
  
end
