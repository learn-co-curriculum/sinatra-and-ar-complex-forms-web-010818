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
    # if params[:author][:name].empty?
    #   book = Book.create(params[:book])
    # else
    #   author = Author.create(params[:author])
    #   book = author.books.create(title: params[:book][:title], snippet: params[:book][:snippet])
    # end

    book = Book.new(params[:book])
    book.save

    redirect "/books/#{book.id}"
  end


end
