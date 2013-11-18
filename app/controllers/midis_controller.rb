class MidisController < ApplicationController
  before_action :set_midi, only: [:show, :edit, :update, :destroy]

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
    @midi = Midi.new
  end

  # GET /midis/1/edit
  def edit
  end

  # POST /midis
  # POST /midis.json
  def create
    @midi = Midi.new(midi_params)

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

    # Never trust parameters from the scary internet, only allow the white list through.
    def midi_params
      params.require(:midi).permit(:title, :author)
    end
end
