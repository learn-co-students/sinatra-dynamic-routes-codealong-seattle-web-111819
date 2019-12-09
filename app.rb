require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye' do
    "Goodbye, danny."
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
    # @num1 = params[:number].to_i
    # @num2 = params[:number].to_i
    multiply = params[:num1].to_i * params[:num2].to_i
    "#{multiply}"
    # "#{params[:num1]} + #{params[:numb2]}"
    # "#{@num1} * #{@num2}" #sends a 200 status code
    # "#{@num1 * @num2}" #sends a 200 status code
    # @num1 * @num2
  end
end