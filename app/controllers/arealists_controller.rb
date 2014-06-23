class ArealistsController < ApplicationController
  before_action :set_arealist, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  # GET /arealists
  # GET /arealists.json
  # GET /arealists/1
  # GET /arealists/1.json
  def show
    @arealist = Arealist.find(params[:id])
	end

  # GET /arealists/new
  def new
    @arealist = @user.Arealist.build
  end

  # GET /arealists/1/edit
  def edit
    @arealist = Arealist.find(params[:id])
	end

  # POST /arealists
  # POST /arealists.json
  def create
    @arealist = @user.Arealist.build(arealist_params)

    respond_to do |format|
      if @arealist.save
        format.html { redirect_to @arealist, notice: 'Arealist was successfully created.' }
        format.json { render :show, status: :created, location: @arealist }
      else
        format.html { render :new }
        format.json { render json: @arealist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arealists/1
  # PATCH/PUT /arealists/1.json
  def update
	  @arealist = Arealist.find(params[:id])
    respond_to do |format|
      if @arealist.update(arealist_params)
        format.html { redirect_to @arealist, notice: 'Arealist was successfully updated.' }
        format.json { render :show, status: :ok, location: @arealist }
      else
        format.html { render :edit }
        format.json { render json: @arealist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arealists/1
  # DELETE /arealists/1.json
  def destroy
	  @arealist = Arealist.find(params[:id])
    @arealist.destroy
    respond_to do |format|
      format.html { redirect_to arealists_url, notice: 'Arealist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arealist
      @arealist = Arealist.find(params[:id])
    end
    
		def set_user
		  @user = User.find(params[:id])
	  end
    # Never trust parameters from the scary internet, only allow the white list through.
    def arealist_params
      params.require(:arealist).permit(:uuid, :name)
    end
end
