class Action < ActiveRecord::Base
	belongs_to :owner,class_name: "User"
	has_many :participants, dependent: :destroy
	has_many :users,through: :participants
end
