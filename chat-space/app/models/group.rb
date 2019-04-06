class Group < ApplicationRecord
  def change
    create_table :groups do |t|
      t.string :name, null: false, unique: true
      t.timestamps
    end
  end
  has_many :group_users
  has_many :users, through: :group_users
  validates :name, presence: true
end
