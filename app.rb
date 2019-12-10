require_relative 'config/environment'

class App < Sinatra::Base

  get '/hello' do
    "Hello World!"
  end


  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end


    get "/goodbye/:name" do
      @user_name = params[:name]
      "Goodbye, #{@user_name}."
    end

    #A dynamic route starting with /multiply that accepts two params (num1 and num2) and returns the product of the two numbers.
    get "/multiply/:num1/:num2" do
      "#{params[:num1].to_i * params[:num2].to_i}"
    end
  end