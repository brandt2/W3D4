class User < ActiveRecord::Base

	has_many :author_polls,
		primary_key: :id,
		foreign_key: :user_id,
		class_name: 'Poll'

	has_many :responses,
		primary_key: :id,
		foreign_key: :user_id,
		class_name: 'Response'
end