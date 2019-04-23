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
  has_many :messges

  def show_last_message
    if (last_message = messages_last).present?
      last_message.content? ? last_message.content : '画像が投稿されています'
    else
      'まだメッセージがありません'
    end
  end
end
