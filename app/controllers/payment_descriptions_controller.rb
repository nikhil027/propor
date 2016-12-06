class PaymentDescriptionsController < ApplicationController
  before_action :set_payment_description, only: [:show, :edit, :update, :destroy]

  # GET /payment_descriptions
  # GET /payment_descriptions.json
  def index
    @payment_descriptions = PaymentDescription.all
  end

  # GET /payment_descriptions/1
  # GET /payment_descriptions/1.json
  def show
  end

  # GET /payment_descriptions/new
  def new
    @payment_description = PaymentDescription.new
  end

  # GET /payment_descriptions/1/edit
  def edit
  end

  # POST /payment_descriptions
  # POST /payment_descriptions.json
  def create
    @payment_description = PaymentDescription.new(payment_description_params)

    respond_to do |format|
      if @payment_description.save
        format.html { redirect_to @payment_description, notice: 'Payment description was successfully created.' }
        format.json { render :show, status: :created, location: @payment_description }
      else
        format.html { render :new }
        format.json { render json: @payment_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_descriptions/1
  # PATCH/PUT /payment_descriptions/1.json
  def update
    respond_to do |format|
      if @payment_description.update(payment_description_params)
        format.html { redirect_to @payment_description, notice: 'Payment description was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_description }
      else
        format.html { render :edit }
        format.json { render json: @payment_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_descriptions/1
  # DELETE /payment_descriptions/1.json
  def destroy
    @payment_description.destroy
    respond_to do |format|
      format.html { redirect_to payment_descriptions_url, notice: 'Payment description was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_description
      @payment_description = PaymentDescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_description_params
      params.require(:payment_description).permit(:payment_type, :payment_description)
    end
end
