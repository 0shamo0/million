class PlannificationsController < ApplicationController
  before_action :set_plannification, only: %i[ show edit update destroy ]

  # GET /plannifications or /plannifications.json
  def index      
    if current_user.admin == true
        @plannifications = Plannification.all
      else 
        @plannifications = current_user.plannifications.all
      end
  end

  # GET /plannifications/1 or /plannifications/1.json
  def show
  end

  # GET /plannifications/new
  def new
    @plannification = Plannification.new
  end

  # GET /plannifications/1/edit
  def edit
  end

  # POST /plannifications or /plannifications.json
  def create
    @plannification = current_user.plannifications.new(plannification_params)
      
    respond_to do |format|
      if @plannification.save
        format.html { redirect_to @plannification, notice: "Plannification was successfully created." }
        format.json { render :show, status: :created, location: @plannification }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @plannification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plannifications/1 or /plannifications/1.json
  def update
    respond_to do |format|
      if @plannification.update(plannification_params)
        format.html { redirect_to @plannification, notice: "Plannification was successfully updated." }
        format.json { render :show, status: :ok, location: @plannification }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @plannification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plannifications/1 or /plannifications/1.json
  def destroy
    @plannification.destroy
    respond_to do |format|
      format.html { redirect_to plannifications_url, notice: "Plannification was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plannification
      @plannification = Plannification.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def plannification_params
      params.require(:plannification).permit(:date, :localisation, :etat, :contact_id, :prestation_id, :user_id)
    end
end
