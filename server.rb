require 'pry'
require 'sinatra'
 $answers = [
   "It is certain",
   "Without a doubt",
   "It is decidedly so",
   "Yes, definitely",
   "You may rely on it",
   "As I see it, yes",
   "Most likely",
   "Outlook good",
   "Yes",
   "Signs point to yes",
   "Reply hazy try again",
   "Ask again later",
   "Better not tell you now",
   "Cannot predict now",
   "Concentrate and ask again",
   "Don't count on it",
   "My reply is no",
   "My sources say no",
   "Outlook not so good",
   "Very doubtful"
   ]

  $updated_answers = $answers.clone
get '/' do
  erb :index
end

post '/' do
  @question = params[:question]
  erb :index
end

post '/add' do
  @addanswer = params[:addanswer]
  $updated_answers << @addanswer
  erb :add
end

get '/add' do
  erb :add
end

post '/reset' do
  @clear = params[:clear]
  $updated_answers = $answers.clone
  erb :reset
end

get '/reset' do
  erb :reset
end
