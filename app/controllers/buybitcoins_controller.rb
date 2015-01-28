class BuybitcoinsController < ApplicationController
  before_action :set_buybitcoin, only: [:show, :edit, :update, :destroy]

  # GET /buybitcoins
  # GET /buybitcoins.json
  def index
    @buybitcoins = Buybitcoin.all
  end

  # GET /buybitcoins/1
  # GET /buybitcoins/1.json
  def show
  end

  # GET /buybitcoins/new
  def new
    @buybitcoin = Buybitcoin.new
  end

  # GET /buybitcoins/1/edit
  def edit
  end

  # POST /buybitcoins
  # POST /buybitcoins.json
  def create
    @buybitcoin = Buybitcoin.new(buybitcoin_params)

    respond_to do |format|
      if @buybitcoin.save
        format.html { redirect_to @buybitcoin, notice: 'Buybitcoin was successfully created.' }
        format.json { render :show, status: :created, location: @buybitcoin }
      else
        format.html { render :new }
        format.json { render json: @buybitcoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buybitcoins/1
  # PATCH/PUT /buybitcoins/1.json
  def update
    respond_to do |format|
      if @buybitcoin.update(buybitcoin_params)
        format.html { redirect_to @buybitcoin, notice: 'Buybitcoin was successfully updated.' }
        format.json { render :show, status: :ok, location: @buybitcoin }
      else
        format.html { render :edit }
        format.json { render json: @buybitcoin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buybitcoins/1
  # DELETE /buybitcoins/1.json
  def destroy
    @buybitcoin.destroy
    respond_to do |format|
      format.html { redirect_to buybitcoins_url, notice: 'Buybitcoin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buybitcoin
      @buybitcoin = Buybitcoin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buybitcoin_params
      params.require(:buybitcoin).permit(:usd, :btc, :mail, :phone)
    end
end
