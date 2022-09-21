class BooksController < ApplicationController

    def create
      @book =Book.new(book_params)
      if @book.save
     redirect_to book_path(@book.id),notice: 'Book was successfully created.'
      else
     @books = Book.all
     render :index
      end
    end
    def index
      puts "作成したキー #{ENV['SECRET_KEY']}"
      @books =Book.all
      # ↓form_withに入れる為の空のインスタンス
      @book =Book.new
    end
    def show
      @book =Book.find(params[:id])
    end
    def edit
      @book =Book.find(params[:id])
    end
    def update
      book = Book.find(params[:id])
    if book.update(book_params)
      redirect_to book_path(book.id),notice: 'Book was successfully updated.'
    else
      @book =Book.find(params[:id])
      @book.update(book_params)
      render "edit"
    end
    end
    def destroy
      book = Book.find(params[:id])
      book.destroy
      redirect_to books_path
    end
    private
    def book_params
      params.require(:book).permit(:title,:body)
    end
end