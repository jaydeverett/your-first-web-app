require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
  erb :index
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films']
  erb :about_me
end

get '/favourites' do
  @fav_links = ['www.reddit.com/r/askreddit', 'www.reddit.com/r/outoftheloop', 'www.reddit.com/r/interestingasfuck', 'www.reddit.com/r/mildlyinteresting']
  erb :favourites
end
