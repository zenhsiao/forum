class Topic < ApplicationRecord
    validates_presence_of :title
	belongs_to :user
	has_many :comments,:dependent=>:destroy
	has_many :topic_categoryships,:dependent=>:destroy
	has_many :categorys, :through=>:topic_categoryships,:dependent=>:destroy

	# @topic.comments_with_paginate
	def comments_with_paginate(page)
		comments.page(page).per(5)
	end
end
