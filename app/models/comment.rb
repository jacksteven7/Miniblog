class Comment < ActiveRecord::Base
  attr_accessible :id_post, :title
  belongs_to :post
end
