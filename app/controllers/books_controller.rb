class BooksController < ApplicationController
    def index
        @books = Book.all.order(:last_sales_rank)
    end
end
