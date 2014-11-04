class CreateStumarks < ActiveRecord::Migration
  def change
    create_table :stumarks do |t|
      t.string :Full_Name
      t.integer :Class
      t.integer :Mathematics
      t.integer :Science
      t.integer :Social
      t.integer :Total

      t.timestamps
    end
  end
end
