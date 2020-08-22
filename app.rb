require 'sinatra'
require 'sinatra/reloader'

get '/hello' do
    return "<h1>こんにちは！</h1>"
end

get "/search" do
    return "<h1>ようこそ！#{params[:name]}さん！#{params[:word]}を検索します！</h1>"
end

get "/mypage/:name" do
    # @menu = params[:menu].split("と")
    return erb :mypage
end

get '/puts/:str' do #http://localhost:4567/puts/hoge
    puts params[:str]
end

get '/html/:str' do #http://localhost:4567/html/hoge
    return "<h1>#{params[:str]}</h1>"
end

get '/q' do #http://localhost:4567/q?str=hello
    return "<h1>#{params[:str]}</h1>"
end

get '/greeting' do #http://localhost:4567/greeting
    @greeting = "こんにちは"
    return erb :greeting
end

get '/items' do 
    @items = ["りんご", "レモン", "ぶどう"]
    return erb :items
end

get '/fizzbuzz' do
    @number = params[:number].to_i
    return erb :fizzbuzz
end