# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

db = SQLite3::Database.new 'db/kakeibo.db'

enable :method_override
set :root,  File.dirname(__FILE__)
set :views, Proc.new { File.join(root, 'views') }

get '/' do
  erb :index
end

get '/hello' do
  "Hello World"
end