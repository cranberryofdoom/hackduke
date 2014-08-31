class Spring2014::MediaController < InheritedResources::Base
	layout 'spring2014'

	def index
		@media = Medium.all
		@articles = Medium.where(:media_type => "Article")
		@galleries = Medium.where(:media_type => "Gallery")
		@videos = Medium.where(:media_type => "Video")
	end
end
