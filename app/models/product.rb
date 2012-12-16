class Product < ActiveRecord::Base
  attr_accessible :content, :price, :title, :image
  belongs_to :user
  has_many :comments

 has_attached_file :image, :styles => { :small => "150x150>" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

validates_attachment_presence :image
validates_attachment_size :image, :less_than => 5.megabytes
validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']

end
