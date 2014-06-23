class ImsController < ApplicationController
  before_action :set_im, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  # GET /ims
  # GET /ims.json
  # GET /ims/1
  # GET /ims/1.json
  def show
     @im = Im.find(params[:id])
	end

  # GET /ims/new
  def new
    @im = @user.Im.build
  end

  # GET /ims/1/edit
  def edit
    @im = Im.find(params[:id])
	end

  # POST /ims
  # POST /ims.json
  def create
    @im = @user.Im.build(im_params)

    respond_to do |format|
      if @im.save
        format.html { redirect_to @im, notice: 'Im was successfully created.' }
        format.json { render :show, status: :created, location: @im }
      else
        format.html { render :new }
        format.json { render json: @im.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ims/1
  # PATCH/PUT /ims/1.json
  def update
	  @im = Im.find(params[:id])
    respond_to do |format|
      if @im.update(im_params)
        format.html { redirect_to @im, notice: 'Im was successfully updated.' }
        format.json { render :show, status: :ok, location: @im }
      else
        format.html { render :edit }
        format.json { render json: @im.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ims/1
  # DELETE /ims/1.json
  def destroy
	  @im = Im.find(params[:id])
    @im.destroy
    respond_to do |format|
      format.html { redirect_to ims_url, notice: 'Im was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_im
      @im = Im.find(params[:id])
    end
    
    def set_user
	    @user = User.find(params[:id])
	  end
    # Never trust parameters from the scary internet, only allow the white list through.
    def im_params
      params.require(:im).permit(:uuid, :type, :number)
    end
end
