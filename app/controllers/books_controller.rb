class BooksController < ApplicationController
  def index
  end

  def show
    @book = book(params[:id])
  end
end
