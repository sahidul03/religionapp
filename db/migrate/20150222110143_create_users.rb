class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :name
      t.string :father_name
      t.string :mother_name
      t.string :email
      t.integer :age
      t.string :education
      t.string :nationality

      t.references :category, index: true

      t.timestamps
    end
  end
end
