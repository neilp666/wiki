class Article < ActiveRecord::Base

	extend FriendlyId
		friendly_id :titl, use: :slugged

	belongs_to :user
	belongs_to :category
end
