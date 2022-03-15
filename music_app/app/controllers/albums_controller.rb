class AlbumsController < ApplicationController

    def show
        @album = Album.find(params[:id])
        redirect_to bands_url
    end

    def new
        @album = Album.new
        render :new
    end

    def create
        @album = Album.new(album_params)
        debugger
        if @album.save
            redirect_to bands_url
        else
            render :new
        end
    end

    def edit
        @album = Album.find(params[:id])
        render :edit
    end

    def update
        @album = Album.find(params[:id])
        if album.save
            redirect_to bands_url
        else
            render :edit
        end
    end

    def destroy
        @album = Album.find(params[:id])
        @album.destroy
        redirect_to bands_url
    end

    def album_params
        params.require(:album).permit(:title, :band_id, :year, :live)
    end


end