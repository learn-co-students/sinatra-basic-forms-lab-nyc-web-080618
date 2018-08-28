require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @age = params[:age]
    @breed = params[:breed]
    @name = params[:name]

    erb :display_puppy
  end
end
