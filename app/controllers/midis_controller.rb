class MidisController < ApplicationController
  before_action :set_midi, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /midis
  # GET /midis.json
  def index
    @midis = Midi.all
  end

  # GET /midis/1
  # GET /midis/1.json
  def show
  end

  # GET /midis/new
  def new
    @midi = current_user.midis.build
  end

  # GET /midis/1/edit
  def edit
  end

  # POST /midis
  # POST /midis.json
  def create
    @midi = current_user.midis.build(midi_params)

      if @midi.save
        redirect_to @midi, notice: 'Midi was successfully created.'
      else
        render action: 'new'
       
      end
  end
 


  def update
      if @midi.update(midi_params)
        redirect_to @midi, notice: 'Midi was successfully updated.' 
      else
        render action: 'edit' 
      end
  end

  
  def destroy
    @midi.destroy
   
      redirect_to midis_url
      
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_midi
      @midi = Midi.find(params[:id])
    end

    def correct_user
      @midi = current_user.midis.find_by(id: params[:id])
      redirect_to midi_path, notice: "Not authorized to edit this pin" if @midi.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def midi_params
      params.require(:midi).permit(:title, :author, :image, :middiz)
    end
end
