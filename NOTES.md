#Play-x-Play

1. rails new book_store

2. $ rails g model book title:string author:string asin:string published_at:string amazon_image_url:string image_url:string previous_sales_rank:integer last_sales_rank:integer

3. $ rake db:migrate

4. $ rails g controller books index --skip-javascripts

5. # config/routes.rb

    ```ruby
    Rails.application.routes.draw do
        resources :books, only: [:index]
        root 'books#index'
    end
    ```

6. # app/controllers/books_controller.rb
    ```ruby
    class BooksController < ApplicationController
        def index
            @books = Book.all.order(:last_sales_rank)
        end
    end
    ```

7.
