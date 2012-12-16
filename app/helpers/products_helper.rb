module ProductsHelper

def my_products
  user = User.where(:email => self.user).first
  Product.where(:user_id => user.id).first
end

def get_data(id)
  puts "--------------------------------"+ id.to_s
  @user = User.find(id)
end

end
