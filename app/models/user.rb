class User < ActiveRecord::Base

  has_many :authorisations
  has_many :products
  has_many :comments

  validates :email, :presence => true
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :uid , :provider
  # attr_accessible :title, :body

  def add_provider(auth_hash)
    # Check if the provider already exists, so we don't add it twice
    if auth_hash["provider"] == "facebook"
      unless Authorisation.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
        Authorisation.create( :provider => auth_hash["provider"], :uid => auth_hash["uid"])
      end
    else
      unless Authorisation.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
        Authorisation.create( :provider => auth_hash["provider"], :uid => auth_hash["uid"])
      end

    end

  end

end
