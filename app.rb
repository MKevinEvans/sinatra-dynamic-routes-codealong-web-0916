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

  # get '/goodbye' do
  #   "Goodbye World!"
  # end

  get "/goodbye/:name" do
  	@user_name2 = params[:name]
  	"Goodbye #{@user_name2}!"
  end

  get '/multiply/:num1/:num2' do
  	@number1 = params[:num1].to_i
  	@number2 = params[:num2].to_i
  	@final_num = @number1*@number2
  	@final_num.to_s
  end



end