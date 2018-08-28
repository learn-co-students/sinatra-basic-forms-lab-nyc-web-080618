require_relative 'config/environment'
require "pry"
class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display_puppy' do  ##method name must be same the the one in form (line 8 in create_puppy)
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    @puppy = Puppy.new(@name, @breed, @age)
    erb :display_puppy
  end


end
