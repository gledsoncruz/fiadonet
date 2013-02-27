class Produto < ActiveRecord::Base
  attr_accessible :descricao, :valor
  
  has_many :consumos
  has_many :clientes, :through => :consumos
  
  validates_presence_of :descricao, :valor
  validates :valor, :numericality => {:greater_than => 0}
  
  def self.search(search)
    
    if search
      where('descricao LIKE ?', "#{search}%")
    else
      scoped
    end
  end
  
end
