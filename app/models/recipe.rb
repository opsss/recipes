
class Recipe < ApplicationRecord
	extend FriendlyId
	friendly_id :title, use: :slugged
	searchkick autocomplete: ['title']

	validates :title, :body, presence: true
	has_attached_file :image, styles: { medium: "400x400>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	belongs_to :user

	
end










