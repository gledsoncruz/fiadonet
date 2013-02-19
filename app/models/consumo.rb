class Consumo < ActiveRecord::Base
  attr_accessible :quant, :produto_id, :cliente_id
  
  belongs_to :produto
  belongs_to :cliente
end
