class StaticPagesController < ApplicationController
require 'flickr'

    def index
      
        flickr = Flickr.new
#(Figaro.env.flickr_api_key,Figaro.env.flickr_shared_secret)

        unless params[:user_id].blank?
            @photos = flickr.photos.search(user_id: params[:user_id])
          else
            @photos = flickr.photos.getRecent
          end

        respond_to do |format|
            format.html # index.html.erb
            format.xml  { render :xml => @photos }
            format.json { render :json => @photos }

            end
    end
end
