require 'grape'

class ItemAPI < Grape::API
	format :json

	get '/' do
		{ main:'page' }
	end

end