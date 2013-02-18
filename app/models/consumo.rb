class Consumo < ActiveRecord::Base
  attr_accessible :quant
  
  belongs_to :produto
  belongs_to :cliente
end
