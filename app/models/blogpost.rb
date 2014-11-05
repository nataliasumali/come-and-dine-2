class Blogpost
  include Mongoid::Document
  field :name, type: String
  field :city, type: String
  field :state, type: String
  field :title, type: String
  field :content, type: String

  embeds_many :comments
end
