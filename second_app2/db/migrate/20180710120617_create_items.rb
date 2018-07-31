class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.belongs_to :owner
    # t.integer :owner_id
    # t.reference :owner  # =>이 테이블은 owner를 참조할거야
    # t.belongs_to :owner

      t.timestamps
    end
  end
end
