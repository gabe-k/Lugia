class User < ActiveRecord::Base
	has_and_belongs_to_many :events
	has_and_belongs_to_many :tags, -> { uniq }
	has_attached_file :image
 	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

 	def follow_tags(tags)
 	 	self.tags << Tag.where(text: tags)
 		tags.each do |tag|
 			self.tags << Tag.create(text: tag) unless self.tags.where(text: tag).count > 0
 		end
 	end
end
