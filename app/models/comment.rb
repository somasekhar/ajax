class Comment < ActiveRecord::Base

  attr_accessible :opinion, :product_id, :user_id
  belongs_to :product
  belongs_to :user
end
