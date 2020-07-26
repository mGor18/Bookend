class BooksController < ApplicationController
  before_action :set_book, only: [:index, :show, :destroy]
  def index
  end

  def show
    @book
  end

  def destroy
    @book.destroy
    redirect_to dashboard_path(@books)
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end
end
