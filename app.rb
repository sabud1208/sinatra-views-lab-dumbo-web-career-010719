class App < Sinatra::Base

	get '/' do
		erb :index
	end
 get '/hello' do
   erb :hello
 end
  
  get '/goodbye' do 
    erb :goodbye
 end

  get '/date' do 
    @today = Date.today.strftime("%A, %B %d, %Y")
    erb :date
  end
end





# 1. Create a template called `hello.erb` in `views` that contains an `h1` tag
#   with the content `Hello World`. This should get rendered via a GET `/hello`
#   route by your `App` controller in `app.rb`.

# 2. Create another template called `goodbye.erb` in `views`. In this view, use
#   ERB tags to create a variable `name`. This variable should store the name
#   `Joe`. Then, using ERB tags, say "Goodbye Joe" in an `h1` tag. This should get
#   rendered via a GET `/goodbye` route by your `App` controller in `app.rb`.

# 3. Create a template called `date.erb` in `views` that gets rendered via GET
#   `/date`. It should contain an `h1` with the content `Today`