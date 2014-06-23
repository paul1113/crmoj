class FaxesController < ApplicationController
  before_action :set_fax, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  # GET /faxes
  # GET /faxes.json
  # GET /faxes/1
  # GET /faxes/1.json
  def show
     @fax = Fax.find(params[:id])
	end

  # GET /faxes/new
  def new
    @fax = @user.Fax.build
  end

  # GET /faxes/1/edit
  def edit
     @fax = Fax.find(params[:id])
	end

  # POST /faxes
  # POST /faxes.json
  def create
    @fax = @user.Fax.build(fax_params)

    respond_to do |format|
      if @fax.save
        format.html { redirect_to @fax, notice: 'Fax was successfully created.' }
        format.json { render :show, status: :created, location: @fax }
      else
        format.html { render :new }
        format.json { render json: @fax.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faxes/1
  # PATCH/PUT /faxes/1.json
  def update
	   @fax = Fax.find(params[:id])
    respond_to do |format|
      if @fax.update(fax_params)
        format.html { redirect_to @fax, notice: 'Fax was successfully updated.' }
        format.json { render :show, status: :ok, location: @fax }
      else
        format.html { render :edit }
        format.json { render json: @fax.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faxes/1
  # DELETE /faxes/1.json
  def destroy
	  @fax = Fax.find(params[:id])
    @fax.destroy
    respond_to do |format|
      format.html { redirect_to faxes_url, notice: 'Fax was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fax
      @fax = Fax.find(params[:id])
    end
    
    def set_user
		  @user = User.find(params[:id])
	  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fax_params
      params.require(:fax).permit(:uuid, :type, :national, :city, :number, :extension)
    end
end
