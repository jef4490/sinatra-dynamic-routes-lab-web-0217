require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    return params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    string = ""
    # binding.pry
    (params[:number].to_i).times do
      # binding.pry
      string += params[:phrase] + "\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # binding.pry
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      return (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "subtract"
      return (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == "multiply"
      return (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == "divide"
      return (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end

end
