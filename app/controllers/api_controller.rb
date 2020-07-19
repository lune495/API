class ApiController < ApplicationController
	
skip_before_action :verify_authenticity_token
before_action :set_neighbour, only: [:detail_neighbour,:update_neighbour]
  #Post /api/create

  def create_neighbour
    neig = Neighbour.new(

      name: params[:name],
      phone: params[:phone],
      address: params[:address],
      about: params[:about],
      fav: params[:fav]
      )
    if neig.save
      render status: 200, json: {message: 'SUCCESS'}
    else
      render status: 200, json: {message: 'Failed'}
    end
  end

  def list_neighbour
    neighbour = Neighbour.all
    render status: 200, json: neighbour
  end

  def list_fav
    neighbour = Neighbour.where(fav: '1').all
    render status: 200, json: neighbour
  end

  def detail_neighbour
    render status: 200, json: @neighbour
  end

   #put /api/article/:id
    def update_neighbour
        @neighbour.name= params[:api][:name]
        @neighbour.phone= params[:api][:phone]
        @neighbour.address= params[:api][:address]
        @neighbour.about= params[:api][:about]
        @neighbour.fav= params[:api][:fav]
         if @neighbour.save
          render status: 200, json:@neighbour
        else
          render status: 200, json:@neighbour
        end
    end

    private

     def set_neighbour
      @neighbour = Neighbour.find(params[:id])
     end
end
