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
    string
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
    "#{@string}"
  end
end