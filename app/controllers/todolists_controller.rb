class TodolistsController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(content: params[:content])
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to '/books'
    else
      render("/books")
    end
  end
  
  private
  def book_params
    params.permit(:title, :body)
  end
end
