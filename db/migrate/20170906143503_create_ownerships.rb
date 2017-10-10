class CreateOwnerships < ActiveRecord::Migration[5.1]
  def change
    create_table :ownerships do |t|
      t.belongs_to :user
      t.belongs_to :url
      t.timestamps
    end

    # user_id / url_id pair is always unique so
    # add a composite unique index
    add_index :ownerships, [:user_id, :url_id], unique: true
  end
end
