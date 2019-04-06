class GroupUser < ApplicationRecord
  def change
    create_table :group_users do |t|
      t.references :group, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
  belongs_to :group
  belongs_to :user
end
