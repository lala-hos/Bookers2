class UsersController < ApplicationController
  def show
    @user =　Book.all
    @books = @user.books
  end

  def index
  end

  def edit
  end
end
