class Post < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5}
	validates :body,  presence: true

	extend FriendlyId
		friendly_id :title, use: :slugged

	def should_generate_new_friendly_id?
	    title_changed?
	end

	def normalize_friendly_id(input)
	    input.to_s.to_slug.normalize(transliterations: :russian).to_s
	end
end
