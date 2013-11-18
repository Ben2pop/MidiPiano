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

    respond_to do |format|
      if @midi.save
        format.html { redirect_to @midi, notice: 'Midi was successfully created.' }
        format.json { render action: 'show', status: :created, location: @midi }
      else
        format.html { render action: 'new' }
        format.json { render json: @midi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /midis/1
  # PATCH/PUT /midis/1.json
  def update
    respond_to do |format|
      if @midi.update(midi_params)
        format.html { redirect_to @midi, notice: 'Midi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @midi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /midis/1
  # DELETE /midis/1.json
  def destroy
    @midi.destroy
    respond_to do |format|
      format.html { redirect_to midis_url }
      format.json { head :no_content }
    end
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
