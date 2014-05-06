class HaikusController < ApplicationController
  before_action :set_haiku, only: [:show, :edit, :update, :destroy]

  # GET /haikus
  # GET /haikus.json
  def index
    @haikus = Haiku.all
  end

  # GET /haikus/1
  # GET /haikus/1.json
  def show
  end

  # GET /haikus/new
  def new
    @haiku = Haiku.new
  end

  # GET /haikus/1/edit
  def edit
  end

  # POST /haikus
  # POST /haikus.json
  def create
    @haiku = Haiku.new(haiku_params)

    respond_to do |format|
      if @haiku.save
        format.html { redirect_to @haiku, notice: 'Haiku was successfully created.' }
        format.json { render action: 'show', status: :created, location: @haiku }
      else
        format.html { render action: 'new' }
        format.json { render json: @haiku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /haikus/1
  # PATCH/PUT /haikus/1.json
  def update
    respond_to do |format|
      if @haiku.update(haiku_params)
        format.html { redirect_to @haiku, notice: 'Haiku was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @haiku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /haikus/1
  # DELETE /haikus/1.json
  def destroy
    @haiku.destroy
    respond_to do |format|
      format.html { redirect_to haikus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_haiku
      @haiku = Haiku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def haiku_params
      params.require(:haiku).permit(:poem, :user_id)
    end
end
