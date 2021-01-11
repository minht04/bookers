class TodolistsController < ApplicationController
  def new
  @book = Book.new
  end
end
