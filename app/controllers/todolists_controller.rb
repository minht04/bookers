class TodolistsController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/index'
  end
  
  private
  def book_params
    params.permit(:title, :body)
  end
end
