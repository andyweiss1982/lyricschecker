class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  # GET /songs
  # GET /songs.json
  def index
    @songs = Song.order(date: :desc).paginate(:page => params[:page])
  end

  def total
    @songs_1985 = Song.where(year: 1985)

    @songs_1986 = Song.where(year: 1986)

    @songs_1987 = Song.where(year: 1987)

    @songs_1988 = Song.where(year: 1988)

    @songs_1989 = Song.where(year: 1989)

    @songs_1990 = Song.where(year: 1990)

    @songs_1991 = Song.where(year: 1991)

    @songs_1992 = Song.where(year: 1992)

    @songs_1993 = Song.where(year: 1993)

    @songs_1994 = Song.where(year: 1994)

    @songs_1995 = Song.where(year: 1995)

    @songs_1996 = Song.where(year: 1996)

    @songs_1997 = Song.where(year: 1997)
  
    @songs_1998 = Song.where(year: 1998)
  
    @songs_1999 = Song.where(year: 1999)
  
    @songs_2000 = Song.where(year: 2000)
  
    @songs_2001 = Song.where(year: 2001)
  
    @songs_2002 = Song.where(year: 2002)
  
    @songs_2003 = Song.where(year: 2003)
  
    @songs_2004 = Song.where(year: 2004)
  
    @songs_2005 = Song.where(year: 2005)
  
    @songs_2006 = Song.where(year: 2006)
  
    @songs_2007 = Song.where(year: 2007)
  
    @songs_2008 = Song.where(year: 2008)
  
    @songs_2009 = Song.where(year: 2009)
  
    @songs_2010 = Song.where(year: 2010)
  
    @songs_2011 = Song.where(year: 2011)
  
    @songs_2012 = Song.where(year: 2012)
  
    @songs_2013 = Song.where(year: 2013)
  
    @songs_2014 = Song.where(year: 2014)
  
    @songs_2015 = Song.where(year: 2015)
  end

  # GET /songs/1
  # GET /songs/1.json
  def show
  end

  # GET /songs/new
  def new
    @song = Song.new
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs
  # POST /songs.json
  def create
    @song = Song.new(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song, notice: 'Song was successfully created.' }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render :new }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /songs/1
  # PATCH/PUT /songs/1.json
  def update
    respond_to do |format|
      if @song.update(song_params)
        format.html { redirect_to @song, notice: 'Song was successfully updated.' }
        format.json { render :show, status: :ok, location: @song }
      else
        format.html { render :edit }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song.destroy
    respond_to do |format|
      format.html { redirect_to songs_url, notice: 'Song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:lyrics, :name, :artist, :date)
    end
end
