class ImpactsController < ApplicationController
    before_action :set_impact, only: [:show, :edit, :update, :destroy]


  # GET /impacts/1
  # GET /impacts/1.json
  def show
  end

  # GET /impacts/new
  def new
    @impact = Impact.new(impact_params)
  end

  # GET /impacts/1/edit
  def edit
  end

  # POST /impacts
  # POST /impacts.json
  def create
    @impact = Impact.new(impact_params)

    respond_to do |format|
      if @impact.save
        format.html { redirect_to @impact.influencee, notice: 'Nachbarschaft wurde erfolgreich angelegt.' }
        format.json { render :show, status: :created, location: @impact }
      else
        format.html { render :new }
        format.json { render json: @impact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /impacts/1
  # PATCH/PUT /impacts/1.json
  def update
      if @impact.update(impact_params)
        redirect_to @impact.influencee, notice: 'Nachbarschaft wurde erfolgreich gespeichert.'
      else
        render :edit
      end
  end

  # DELETE /impacts/1
  # DELETE /impacts/1.json
  def destroy
    @impact.destroy
    respond_to do |format|
      format.html { redirect_to @impact.influencee, notice: 'Nachbarschaft wurde gelöscht.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_impact
      @impact = Impact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def impact_params
      params.require(:impact).permit(:influencee_id, :influencer_id, :positive_impact, :reason)
    end
end
