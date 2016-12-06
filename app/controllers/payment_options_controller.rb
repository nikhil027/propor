class PaymentOptionsController < ApplicationController
  before_action :set_payment_option, only: [:show, :edit, :update, :destroy]

  # GET /payment_options
  # GET /payment_options.json
  def index
    @payment_options = PaymentOption.all
  end

  # GET /payment_options/1
  # GET /payment_options/1.json
  def show
  end

  # GET /payment_options/new
  def new
    @payment_option = PaymentOption.new
  end

  # GET /payment_options/1/edit
  def edit
  end

  # POST /payment_options
  # POST /payment_options.json
  def create
    @payment_option = PaymentOption.new(payment_option_params)

    respond_to do |format|
      if @payment_option.save
        format.html { redirect_to @payment_option, notice: 'Payment option was successfully created.' }
        format.json { render :show, status: :created, location: @payment_option }
      else
        format.html { render :new }
        format.json { render json: @payment_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_options/1
  # PATCH/PUT /payment_options/1.json
  def update
    respond_to do |format|
      if @payment_option.update(payment_option_params)
        format.html { redirect_to @payment_option, notice: 'Payment option was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_option }
      else
        format.html { render :edit }
        format.json { render json: @payment_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_options/1
  # DELETE /payment_options/1.json
  def destroy
    @payment_option.destroy
    respond_to do |format|
      format.html { redirect_to payment_options_url, notice: 'Payment option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_option
      @payment_option = PaymentOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_option_params
      params.require(:payment_option).permit(:name)
    end
end
