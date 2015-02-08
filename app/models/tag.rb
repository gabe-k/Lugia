class Tag < ActiveRecord::Base
	has_and_belongs_to_many :events, -> { uniq }
	has_and_belongs_to_many :users, -> { uniq }
	#validates_uniqueness_of :user_id, scope: :tag_id
	validates :text, uniqueness: true
end
