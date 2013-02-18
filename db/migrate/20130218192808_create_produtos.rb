class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.decimal :valor, :precision => 8, :scale => 2, :default => 0.0

      t.timestamps
    end
  end
end
