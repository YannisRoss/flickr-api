class StaticPagesController < ApplicationController

    def index
        flickr = Flickr.new

        #@photos

        respond_to do |format|
            format.html # index.html.erb
            format.xml  { render :xml => @photos }
            format.json { render :json => @photos }

            end
    end
end
