class EnvoicesController < ApplicationController
  before_action :set_envoice, only: [:show, :edit, :update, :destroy]

  # GET /envoices
  # GET /envoices.json
  def index
    @envoices = Envoice.all
  end

  # GET /envoices/1
  # GET /envoices/1.json
  def show
  end

  # GET /envoices/new
  def new
    @envoice = Envoice.new
  end

  # GET /envoices/1/edit
  def edit
  end

  # POST /envoices
  # POST /envoices.json
  def create
    @envoice = Envoice.new(envoice_params)

    respond_to do |format|
      if @envoice.save
        first = Product.first
        last = Product.last

        Item.create(envoice: @envoice, product: first,  amount: 10)
        Item.create(envoice: @envoice, product: last, amount: 2)

        format.html { redirect_to @envoice, notice: 'Envoice was successfully created.' }
        format.json { render :show, status: :created, location: @envoice }
      else
        format.html { render :new }
        format.json { render json: @envoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /envoices/1
  # PATCH/PUT /envoices/1.json
  def update
    respond_to do |format|
      if @envoice.update(envoice_params)
        format.html { redirect_to @envoice, notice: 'Envoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @envoice }
      else
        format.html { render :edit }
        format.json { render json: @envoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /envoices/1
  # DELETE /envoices/1.json
  def destroy
    @envoice.destroy
    respond_to do |format|
      format.html { redirect_to envoices_url, notice: 'Envoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_envoice
      @envoice = Envoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def envoice_params
      params.require(:envoice).permit(:customer_id)
    end
end
