class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|

      t.column :response, :string
      t.column :name, :string

      t.timestamps
    end
  end
end
