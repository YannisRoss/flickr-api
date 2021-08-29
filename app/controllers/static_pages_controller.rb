class StaticPagesController < ApplicationController

    def index
      
        Flickr.new(Figaro.env.flickr_api_key,Figaro.env.flickr_shared_secret)
        respond_to do |format|
            format.html # index.html.erb
            format.xml  { render :xml => @photos }
            format.json { render :json => @photos }

            end
    end
end
ENV["FLICKR_SHARED_SECRET"]