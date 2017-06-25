class AuthorNotifierMailer < ApplicationMailer
  default from: 'from@example.com'
  def signup_email(author)
    @author = author
    mail( :to => @author.email,
    :subject => 'Thanks for signing up!' )
  end

  def order_email(author, order)
    @author = author
    @order = order
    mail( :to => @author.email,
    :subject => 'You have made a new Order!' )
  end
end
