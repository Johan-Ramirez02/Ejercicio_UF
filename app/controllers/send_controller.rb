class SendController < ApplicationController
	def protect_from_forgery
	end
		
    def metodoget
				respond_to do |format|
					@client = Client.find_by(name: params[:name])
					format.json {render json: @client}
				end
    end
end
