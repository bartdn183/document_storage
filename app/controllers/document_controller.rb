class DocumentController < ApplicationController

	def destroy
		@document = Document.find(params[:id])
		@document.destroy
	end

end
