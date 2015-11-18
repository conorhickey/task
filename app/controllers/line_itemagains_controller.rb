class LineItemagainsController < ApplicationController
include CurrentStudent
before_action :set_student, only: [:create]
  before_action :set_line_itemagain, only: [:show, :edit, :update, :destroy]

  # GET /line_itemagains
  # GET /line_itemagains.json
  def index
    @line_itemagains = LineItemagain.all
  end

  # GET /line_itemagains/1
  # GET /line_itemagains/1.json
  def show
  end

  # GET /line_itemagains/new
  def new
    @line_itemagain = LineItemagain.new
  end

  # GET /line_itemagains/1/edit
  def edit
  end

  # POST /line_itemagains
  # POST /line_itemagains.json
  def create
    gear = Gear.find(params[:gear_id])
    @line_itemagain = @studnet.line_itemagains.build(gear: gear)

    respond_to do |format|
      if @line_itemagain.save
        format.html { redirect_to @line_itemagain.student, notice: 'Line itemagain was successfully created.' }
        format.json { render :show, status: :created, location: @line_itemagain }
      else
        format.html { render :new }
        format.json { render json: @line_itemagain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_itemagains/1
  # PATCH/PUT /line_itemagains/1.json
  def update
    respond_to do |format|
      if @line_itemagain.update(line_itemagain_params)
        format.html { redirect_to @line_itemagain, notice: 'Line itemagain was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_itemagain }
      else
        format.html { render :edit }
        format.json { render json: @line_itemagain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_itemagains/1
  # DELETE /line_itemagains/1.json
  def destroy
    @line_itemagain.destroy
    respond_to do |format|
      format.html { redirect_to line_itemagains_url, notice: 'Line itemagain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_itemagain
      @line_itemagain = LineItemagain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_itemagain_params
      params.require(:line_itemagain).permit(:gear_id, :student_id)
    end
end
