require_relative 'config/environment'

class App < Sinatra::Base


    get '/reversename/:name' do
      @reversename = "#{params[:name].reverse!}"
    end

    get '/square/:number' do
      number = params[:number].to_i
      @square = "#{number * number}"
    end

    get '/say/:number/:phrase' do
      answer = ''
      params[:number].to_i.times do
        answer += params[:phrase]
      end
      answer
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @say = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2' do
      if params[:operation] == "add"
        @add = "#{params[:number1].to_i + params[:number2].to_i}"
      elsif params[:operation] == "subtract"
        "#{params[:number1].to_i - params[:number2].to_i}"
      elsif params[:operation] == "multiply"
        "#{params[:number1].to_i * params[:number2].to_i}"
      else params[:operation] == "divide"
        "#{params[:number1].to_i / params[:number2].to_i}"
      end

    end

end
