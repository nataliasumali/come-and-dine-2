class Comment
	include Mongoid::Document

	field :name, type: String
	field :comment, type: String

	embedded_in :blogpost

end