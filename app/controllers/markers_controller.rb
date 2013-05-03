class MarkersController < ApplicationController
  def index

  end

  def create
    map = Map.find(params[:map_id])
    marker = Marker.new(:lng => params[:lng], :lat => params[:lat], :content => params[:text])
    marker.map = map
    
      if marker.save
      respond_to do |format| 
      flash.now[:success] = "Marker Saved"
      format.json { render json: marker } 
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end