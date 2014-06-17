class ThermostatModelsController < ApplicationController
  before_action :set_thermostat_model, only: [:show, :edit, :update, :destroy]
    before_filter :authenticate_user!

  # GET /thermostat_models
  # GET /thermostat_models.json
  def index
    if current_user.role== 'admin'
    @thermostat_models = ThermostatModel.all
  else
    redirect_to '/'
  end
  end

  # GET /thermostat_models/1
  # GET /thermostat_models/1.json
  def show
   if current_user.role!= 'admin'
    redirect_to '/'
  end
  end

  # GET /thermostat_models/new
  def new
    if current_user.role== 'admin'
    @thermostat_model = ThermostatModel.new
  else
    redirect_to '/'
  end
  end

  # GET /thermostat_models/1/edit
  def edit
    if current_user.role!= 'admin'
    redirect_to '/'
  end
  end

  # POST /thermostat_models
  # POST /thermostat_models.json
  def create
    @thermostat_model = ThermostatModel.new(thermostat_model_params)

    respond_to do |format|
      if @thermostat_model.save
        format.html { redirect_to @thermostat_model, notice: 'Thermostat model was successfully created.' }
        format.json { render action: 'show', status: :created, location: @thermostat_model }
      else
        format.html { render action: 'new' }
        format.json { render json: @thermostat_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thermostat_models/1
  # PATCH/PUT /thermostat_models/1.json
  def update
    respond_to do |format|
      if @thermostat_model.update(thermostat_model_params)
        format.html { redirect_to @thermostat_model, notice: 'Thermostat model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @thermostat_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thermostat_models/1
  # DELETE /thermostat_models/1.json
  def destroy
    if current_user.role!= 'admin'
    redirect_to '/'
    end
    @thermostat_model.destroy
    respond_to do |format|
      format.html { redirect_to thermostat_models_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thermostat_model
      @thermostat_model = ThermostatModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thermostat_model_params
      params.require(:thermostat_model).permit(:name)
    end
end
