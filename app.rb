require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @result = params[:number].to_i ** 2
    "#{@result}"
  end
  
  get '/say/:number/:phrase' do
    string = ""
    params[:number].to_i.times do 
      string += params[:phrase]
    end
  end

end