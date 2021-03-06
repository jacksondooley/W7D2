class BandsController < ApplicationController

    def index
        @bands = Band.all
        render :index
    end

    def show
        @band = Band.find(params[:id])
        render :show
    end

    def new
        @band = Band.new
        render :new
    end

    def create
        @band = Band.new(band_params)
        if @band.save
            redirect_to bands_url
        else
            render :new
        end
    end

    def edit
        @band = Band.find(params[:id])
        render :edit
    end

    def update
        @band = Band.find(params[:id])
        @band.update(band_params)
        if @band.save
            render :show
        else
            render :update
        end
    end

    def destroy
        @band = Band.find(params[:id])
        @band.destroy
        redirect_to bands_url
    end

    def band_params
        params.require(:band).permit(:name)
    end

end