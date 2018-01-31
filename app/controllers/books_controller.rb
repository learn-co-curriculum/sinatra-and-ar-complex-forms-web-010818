class BooksController < ApplicationController

  get '/books/new' do
     erb :'books/new.html'
  end
  
end
