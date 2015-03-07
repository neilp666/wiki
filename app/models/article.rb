# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  content     :text
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#  category_id :integer
#  slug        :string(255)
#

class Article < ActiveRecord::Base

	extend FriendlyId
		friendly_id :title, use: :slugged

		mount_uploader :cover, CoverUploader

	belongs_to :user
	belongs_to :category
end
