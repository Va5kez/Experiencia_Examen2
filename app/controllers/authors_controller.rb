class AuthorsController < ApplicationController
  skip_before_action :authenticate

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      login(@author)
      AuthorNotifierMailer.signup_email(@author).deliver
    else
      render :new
    end
  end

  def book
    @books = Book.where(["author_id = ?", current_author.id])
  end

  protected

  def author_params
    params.require(:author).permit!
  end
end
