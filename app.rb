require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end # home route

  post '/' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]

    erb :display_puppy
  end # handle new puppy submission

  get '/new' do
    erb :create_puppy
  end # new puppy route

end
