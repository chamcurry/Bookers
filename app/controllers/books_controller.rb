　class BooksController < ApplicationController
    def new
    　@book = Book.new
    end
    def create
    　@book = Book.new
    　@book.save
    　redirect_to book_path(book.id)
    　end
    def index
      @books =Book.all
    end
    def show
      @book = Book.find(params[:id])
    end
    def edit
      @book = Book.find(params[:id])
    end
  end