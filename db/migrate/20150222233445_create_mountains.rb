class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :elevation
      t.string :name
      t.boolean :climbed

      t.timestamps null: false
    end
  end
end
