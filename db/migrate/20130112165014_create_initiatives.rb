class CreateInitiatives < ActiveRecord::Migration
  def change
    create_table :initiatives do |t|
      t.string :name
      t.date :launchdate
      t.date :enddate
      t.text :target
      t.text :offer
      t.string :landingpage
      t.integer :budget
      t.integer :targetemails
      t.integer :actualemails
      t.integer :spent
      t.string :teamlead

      t.timestamps
    end
  end
end
