class Fall2015::MediaController < ApplicationController
	layout 'fall2015'

	def index
		@media = Medium.all
		@articles = Medium.where(:media_type => "Article")
		@galleries = Medium.where(:media_type => "Gallery")
		@videos = Medium.where(:media_type => "Video")
	end
end
