#Play-x-Play

## BOOK MODEL
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

7. delete all turbolinks from Gemfile && application.js & application.html.erb

8. # app/views/layouts/application.html.erb

    <%= render "layouts/header" %>

    <section class="app-cont">
    <%= yield %>
    </section>

    <%= render "layouts/footer" %>

### STYLING
9. # application.css skeleton:
    ```ruby
    *= require reset
    *= require layout
    *= require header
    *= require footer
    ```

10. 
