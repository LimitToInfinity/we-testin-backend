class CreateOranges < ActiveRecord::Migration[6.0]
  def change
    create_table :oranges do |t|
      t.string :color

      t.timestamps
    end
  end
end
