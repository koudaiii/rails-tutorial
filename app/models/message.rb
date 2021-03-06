# == Schema Information
#
# Table name: messages
#
#  id           :integer          not null, primary key
#  sender_id    :integer
#  recipient_id :integer
#  content      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Message < ActiveRecord::Base
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"

  default_scope -> { order('created_at DESC') }

  validates :sender_id, presence: true
  validates :recipient_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  def self.relation_direct_messages(user)
    where("recipient_id = :user_id OR sender_id = :user_id", user_id: user)
  end

end
