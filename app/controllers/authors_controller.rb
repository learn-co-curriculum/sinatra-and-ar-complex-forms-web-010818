class AuthorsController < ApplicationController

  get '/authors/:id' do
    @author = Author.find_by(id: params[:id])
    erb :'authors/show.html'
  end
  
end
