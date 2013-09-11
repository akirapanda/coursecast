class ChatpersController < ApplicationController
  before_action :set_chatper, only: [:show, :edit, :update, :destroy]

  # GET /chatpers
  # GET /chatpers.json
  def index
    @chatpers = Chatper.all
  end

  # GET /chatpers/1
  # GET /chatpers/1.json
  def show
  end

  # GET /chatpers/new
  def new
    @chatper = Chatper.new
  end

  # GET /chatpers/1/edit
  def edit
  end

  # POST /chatpers
  # POST /chatpers.json
  def create
    @chatper = Chatper.new(chatper_params)

    respond_to do |format|
      if @chatper.save
        format.html { redirect_to @chatper, notice: 'Chatper was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chatper }
      else
        format.html { render action: 'new' }
        format.json { render json: @chatper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chatpers/1
  # PATCH/PUT /chatpers/1.json
  def update
    respond_to do |format|
      if @chatper.update(chatper_params)
        format.html { redirect_to @chatper, notice: 'Chatper was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chatper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chatpers/1
  # DELETE /chatpers/1.json
  def destroy
    @chatper.destroy
    respond_to do |format|
      format.html { redirect_to chatpers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatper
      @chatper = Chatper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chatper_params
      params.require(:chatper).permit(:title, :img, :content, :course_id)
    end
end
