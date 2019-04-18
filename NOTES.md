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

10. # app/assets/stylesheets/*
    footer.scss
    header.scss
    layout.scss


### AMAZON API

11. # lib/tasks/books.rake
    ```ruby
    namespace :booksonrails do
        desc 'Import books'
        task :import => :environment do
        end

        def asins
            %w(0321944275 1937785564 1593275722 0134077709 1617291099 B00QW597D8 0692364218 1937785556 B00QK2T1SY 1941222196 B00YPU5MGS B0127BVV8Y 0321659368 B012O6PJMG B012BB0G2W 1491910852 B00NKML6JE 1491054484)
        end
    end
    ```

12. 
