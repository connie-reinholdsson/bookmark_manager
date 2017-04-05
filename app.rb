require 'sinatra/base'
require_relative './models/link'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb(:index)
    redirect '/links'
  end

  get '/links' do # The path / url.
    @links = Link.all # Set instance variable to Link all.
    erb(:links) # Reference the file.
  end

  get '/links/new' do
    erb(:new_links)
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/links'
  end
end
