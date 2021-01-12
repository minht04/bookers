class BooksController < ApplicationController
  def top
  end

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(content: params[:content])
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to '/books'
    else
      render("posts/new")
    end
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
