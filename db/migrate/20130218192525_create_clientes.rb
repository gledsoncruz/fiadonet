class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :tel
      t.string :cel
      t.string :email

      t.timestamps
    end
  end
end
