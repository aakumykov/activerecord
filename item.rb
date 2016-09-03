require 'grape'
require_relative 'model'

class ItemAPI < Grape::API
	format :json

	get '/' do
		{ main:'page' }
	end

	[:list,:items].each do |name|
		get name do
			Item.all
		end
	end

	post '/items/new' do
		item = Item.new
		item.title = params[:title]
		item.content = params[:content]
		
		if item.save then
			{ title: params[:title], content: params[:content] }
			redirect 'http://localhost/ruby/activerecord/post.html'
		else
			{item_is: 'not saved'}
		end
	end

end
