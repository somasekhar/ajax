class UserMailer < ActionMailer::Base
  default from: "from@example.com"

=begin
  def welcome_email(user)

    @user = user
    @url  = "http://example.com/login"
    #attachments['terms.pdf'] = File.read('/path/terms.pdf')
    mail(:to => user.email, :subject => "Welcome to My Awesome Site") do |format|
      format.html
    end
  end

  def creation(product)

      @product = product
      mail(:to => product.user.email, :subject => "Thanks for creating the product")

  end

  def deletion(product)

    @product = product
    mail(:to => product.user.email, :subject => "Thanks for deleting the product")

  end
=end

end
