class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_author, :authenticate
  before_action :authenticate

  def login(author)
  	session[:author_id] = author.id
  	redirect_to book_author_path(author.id)
  end

  def logout
  	reset_session
  	redirect_to root_path
  end

  def current_author
    if session[:author_id]
      @current_author = Author.find(session[:author_id])
    end
  end

  def authenticate
    unless current_author
      redirect_to root_path
    end
  end
end
