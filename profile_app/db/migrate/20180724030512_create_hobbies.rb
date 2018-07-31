class CreateHobbies < ActiveRecord::Migration[5.0]
  def change
    create_table :hobbies do |t|
      t.string :title
      t.belongs_to :user
      t.timestamps
    end
  end
end
