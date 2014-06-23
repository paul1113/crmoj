class MobileTypeListsController < ApplicationController
  before_action :set_mobile_type_list, only: [:show, :edit, :update, :destroy]
  before_action :set_mobile
  # GET /mobile_type_lists
  # GET /mobile_type_lists.json
  # GET /mobile_type_lists/1
  # GET /mobile_type_lists/1.json
  def show
     @mobile_type_list = MobileTypeList.find(params[:id])
	end

  # GET /mobile_type_lists/new
  def new
    @mobile_type_list = @mobile.MobileTypeList.build
  end

  # GET /mobile_type_lists/1/edit
  def edit
	  @mobile_type_list = MobileTypeList.find(params[:id])
  end

  # POST /mobile_type_lists
  # POST /mobile_type_lists.json
  def create
    @mobile_type_list = @mobile.MobileTypeList.build(mobile_type_list_params)

    respond_to do |format|
      if @mobile_type_list.save
        format.html { redirect_to @mobile_type_list, notice: 'Mobile type list was successfully created.' }
        format.json { render :show, status: :created, location: @mobile_type_list }
      else
        format.html { render :new }
        format.json { render json: @mobile_type_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mobile_type_lists/1
  # PATCH/PUT /mobile_type_lists/1.json
  def update
	  @mobile_type_list = MobileTypeList.find(params[:id])
    respond_to do |format|
      if @mobile_type_list.update(mobile_type_list_params)
        format.html { redirect_to @mobile_type_list, notice: 'Mobile type list was successfully updated.' }
        format.json { render :show, status: :ok, location: @mobile_type_list }
      else
        format.html { render :edit }
        format.json { render json: @mobile_type_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mobile_type_lists/1
  # DELETE /mobile_type_lists/1.json
  def destroy
	  @mobile_type_list = MobileTypeList.find(params[:id])
    @mobile_type_list.destroy
    respond_to do |format|
      format.html { redirect_to mobile_type_lists_url, notice: 'Mobile type list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mobile_type_list
      @mobile_type_list = MobileTypeList.find(params[:id])
    end
    
    def set_user
		  @user = User.find(params[:id])
	  end    # Never trust parameters from the scary internet, only allow the white list through.
    def mobile_type_list_params
      params.require(:mobile_type_list).permit(:uuid, :name)
    end

end
