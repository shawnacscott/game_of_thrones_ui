class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.timestamps null: false
      t.jsonb :raw, default: ""
      t.string :name, default: ""
      t.text :text, default: ""
      t.text :flavor, default: ""
      t.integer :deck_limit
      t.integer :strength
      t.integer :income
      t.integer :initiative
      t.integer :cost
      t.integer :claim
      t.integer :reserve
      t.integer :type, default: 0
      t.integer :faction, default: 0
      t.boolean :is_unique
      t.boolean :is_loyal
      t.boolean :is_military
      t.boolean :is_intrigue
      t.boolean :is_power
      t.text :octgnid, default: ""
      t.text :url, default: ""
      t.text :imagesrc, default: ""
    end
  end
end
