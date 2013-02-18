class CreateConsumos < ActiveRecord::Migration
  def change
    create_table :consumos do |t|
      t.integer :quant

      t.timestamps
    end
  end
end
