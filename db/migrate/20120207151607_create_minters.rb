class CreateMinters < ActiveRecord::Migration
  def change
    create_table :minters do |t|
      t.string :template
      t.string :frozen_minter

      t.timestamps
    end
  end
end
