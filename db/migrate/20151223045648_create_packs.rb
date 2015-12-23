class CreatePacks < ActiveRecord::Migration
  def change
    create_table :packs do |t|
      t.string :name, default: ""
    end
  end
end
