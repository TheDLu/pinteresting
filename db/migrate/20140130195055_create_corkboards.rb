class CreateCorkboards < ActiveRecord::Migration
  def change
    create_table :corkboards do |t|
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
