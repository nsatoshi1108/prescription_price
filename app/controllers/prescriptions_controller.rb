class PrescriptionsController < ApplicationController
  before_action :set_prescription, only: [:show, :edit, :update, :destroy]
  before_action :return_login, only: [:index, :edit, :show, :destroy]
  autocomplete :medicine, :name, full: true # オートコンプリート用に追加

  # GET /prescriptions
  # GET /prescriptions.json
  def index
    @prescriptions = Prescription.all
  end

  # GET /prescriptions/1
  # GET /prescriptions/1.json
  def show
  end

  # GET /prescriptions/new
  def new
    @medicines = Medicine.all
    if params[:back]
      @prescription = Prescription.new(prescription_params)
    else
      @prescription = Prescription.new
    end
  end

  def confirm
    @prescription = Prescription.new()
    # prescriptions_medicine_medicines
    @medicines = []
    @doses = []
    prescription_params[:prescription_medicines_attributes].each do |key, medicine|
      if medicine[:medicine_id].present? || medicine[:dose].present?
        @medicines << Medicine.find_by(name: medicine[:medicine_id])
        @doses << medicine[:dose]
      end
    end

    # @prescription.user_id = current_user.id if @prescription.invalid?
    # render :new if @prescription.invalid?
  end

  # GET /prescriptions/1/edit
  def edit
  end

  # POST /prescriptions
  # POST /prescriptions.json
  def create
    @prescription = Prescription.new(prescription_params)
    @prescription.user_id = current_user.id

    respond_to do |format|
      if @prescription.save
        format.html { redirect_to @prescription, notice: 'Prescription was successfully created.' }
        format.json { render :show, status: :created, location: @prescription }
      else
        format.html { render :new }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescriptions/1
  # PATCH/PUT /prescriptions/1.json
  def update
    respond_to do |format|
      if @prescription.update(prescription_params)
        format.html { redirect_to @prescription, notice: 'Prescription was successfully updated.' }
        format.json { render :show, status: :ok, location: @prescription }
      else
        format.html { render :edit }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescriptions/1
  # DELETE /prescriptions/1.json
  def destroy
    @prescription.destroy
    respond_to do |format|
      format.html { redirect_to prescriptions_url, notice: 'Prescription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescription
      @prescription = Prescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prescription_params
      params.require(:prescription).permit(
        prescription_medicines_attributes: [:id, :medicine_id, :dose, :dose_method_id, :_destroy]
      )
    end

    # def medicine_params
    #   params.require(:medicine).permit(:name, :number)
    # end

    def return_login
      return redirect_to new_user_session_path unless user_signed_in?
    end
end
