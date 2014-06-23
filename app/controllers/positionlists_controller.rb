class PositionlistsController < ApplicationController
  before_action :set_positionlist, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  # GET /positionlists
  # GET /positionlists.json
  # GET /positionlists/1
  # GET /positionlists/1.json
  def show
   @positionlist = Positionlist.find(params[:id])
	end

  # GET /positionlists/new
  def new
    @positionlist = @user.Positionlist.build
  end

  # GET /positionlists/1/edit
  def edit
   @positionlist = Positionlist.find(params[:id])
	end

  # POST /positionlists
  # POST /positionlists.json
  def create
    @positionlist = @user.Positionlist.build(positionlist_params)

    respond_to do |format|
      if @positionlist.save
        format.html { redirect_to @positionlist, notice: 'Positionlist was successfully created.' }
        format.json { render :show, status: :created, location: @positionlist }
      else
        format.html { render :new }
        format.json { render json: @positionlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /positionlists/1
  # PATCH/PUT /positionlists/1.json
  def update
	  @positionlist = Positionlist.find(params[:id])
    respond_to do |format|
      if @positionlist.update(positionlist_params)
        format.html { redirect_to @positionlist, notice: 'Positionlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @positionlist }
      else
        format.html { render :edit }
        format.json { render json: @positionlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /positionlists/1
  # DELETE /positionlists/1.json
  def destroy
	  @positionlist = Positionlist.find(params[:id])
    @positionlist.destroy
    respond_to do |format|
      format.html { redirect_to positionlists_url, notice: 'Positionlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_positionlist
      @positionlist = Positionlist.find(params[:id])
    end
    
    def set_user
		  @user = User.find(params[:id])
	  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def positionlist_params
      params.require(:positionlist).permit(:uuid, :name)
    end
end
