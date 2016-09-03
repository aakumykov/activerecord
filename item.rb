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

	resource :items do
		params do
			requires :title
			requires :content
		end
		
		post :new do
			{ params[:title].count.to_s => params[:content].count }
		end
	end

end