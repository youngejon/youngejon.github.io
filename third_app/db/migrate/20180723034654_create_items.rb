class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.belongs_to :owner   # item table는 주인에게 속해있어
      # t.integer :owner_id # 다 같은말
      # t.reference :owner
      t.timestamps
    end
  end
end
