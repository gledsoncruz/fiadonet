class Cliente < ActiveRecord::Base
  attr_accessible :cel, :email, :nome, :tel
  
  has_many :consumos
  has_many :produtos, :through => :consumos
  
  validates_presence_of :cel, :email, :nome, :tel
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates_uniqueness_of :email
  
  def self.search(search, page)
  paginate :per_page => 10, :page => page,
           :conditions => ['nome like ?', "#{search}%"], :order => 'nome'
end
  
end
