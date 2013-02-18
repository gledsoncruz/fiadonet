class AddColumnClienteIdToConsumo < ActiveRecord::Migration
  def change
    add_column :consumos, :cliente_id, :integer
  end
end
