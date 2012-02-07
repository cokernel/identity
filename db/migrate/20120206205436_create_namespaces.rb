class CreateNamespaces < ActiveRecord::Migration
  def change
    create_table :namespaces do |t|
      t.decimal :identifier
      t.datetime :creation_date

      t.timestamps
    end
  end
end
