class Blogpost
  include Mongoid::Document

  field :name, type: String
  field :city, type: String
  field :state, type: String
  field :title, type: String
  field :content, type: String

  has_many :comments

# Tried the code below to search blogposts/index by title but did not work

#   def self.search(search)
# 	if search
# 		where( 'title LIKE ?', "%#{search}%")
# 	else
# 		scoped
# 	end
# end

end

