class ChangeIdentifierToString < ActiveRecord::Migration
  def up 
    change_column :namespaces, :identifier, :string
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
