class BooksController < ApplicationController

  get '/books' do
    @books = Book.all
    erb :'books/index.html'
  end

  get '/books/new' do
    @authors = Author.all
    erb :'books/new.html'
  end

  get '/books/:id' do
    @book = Book.find_by(id: params[:id])
    erb :'books/show.html'
  end

  post '/books' do
    book = Book.create(params[:book])

    redirect "/books/#{book.id}"
  end


end
