class Comment
	include Mongoid::Document

	field :name, type: String
	field :comment, type: String

	belongs_to :blogpost

end