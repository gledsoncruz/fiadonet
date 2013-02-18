class AddColumnProdutoIdToConsumo < ActiveRecord::Migration
  def change
    add_column :consumos, :produto_id, :integer
  end
end
