require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  
  get '/' do
    "This is your homepage"
  end

  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get '/hello/:name' do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  
  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye #{@user_name}"
  end
  
  get '/multiply/:num1/:num2' do
    @number1 = params[:num1].to_i
    @number2 = params[:num2].to_i
    @product = @number1 * @number2
    "Your product is #{@product}"
  end
  
  
end


1 CommentCollapse 
Dynamic Routes Code-Along (Controller)
new messages

Helen Paulini4:52 PM
added this Ruby snippet: dynamic routes by izzy & helen (includes eval function) 
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @username = params[:name]
    "Your reversed string is: #{@username.reverse}"
  end
  
  get '/square/:number' do
    @num = params[:number].to_i
    @num = @num**2
    "#{@num}"
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrases = params[:phrase]
    @all_phrases = ""
    for i in 1..@num
     @all_phrases+="#{@phrases}\n"
    end
    
    return @all_phrases
    end
    
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    operators = {"add"=>"+", "subtract"=>"-", "divide"=>"/", "multiply"=>"*"}
    practice = eval("#{params[:number1]} #{operators[params[:operation]]} #{params[:number2]}")
    return practice.to_s
  end

end



