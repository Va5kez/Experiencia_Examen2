class SessionsController < ApplicationController
  skip_before_action :authenticate

  def new
    if current_author
      redirect_to root_path
    end
  end

  def create
    password = params[:session][:password]
    email = params[:session][:email]


    @author = Author.find_by(email: email)

    if @author && @author.authenticate(password)
      login(@author)
    else
      redirect_to login_path, flash: { error: "Email o Password incorrecto"}
    end
  end

  def show
    @current_author = current_author
  end

  def destroy
    logout
  end
end
