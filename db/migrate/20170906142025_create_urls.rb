class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.column :path, :string, limit: 500
      t.column :code, :string, limit: 8
      t.timestamps
    end

    # indexes
    # optimizes search by path
    add_index :urls, :path, unique: true
    # optimizes search by code
    add_index :urls, :code, unique: true
  end
end
