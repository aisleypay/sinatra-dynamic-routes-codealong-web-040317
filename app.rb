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

  get '/goodbye/:name' do
    @user_name = param[:name]
    "Goodbye #{@user_name}"
  end

  get '/multiply/:num1/:num2' do
    binding.pry
    @num1 = param[:num1]
    @num2 = param[:num2]

    @num1 * @num2
  end


end
