class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|

      t.string :content
      t.string :image
      t.reference :group, foreign_key: true
      t.reference :user, foreign_key: true
      t.timestamps
    end
  end
end
