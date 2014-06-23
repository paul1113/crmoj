class ImTypeListsController < ApplicationController
  before_action :set_im_type_list, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  # GET /im_type_lists
  # GET /im_type_lists.json
  # GET /im_type_lists/1
  # GET /im_type_lists/1.json
  def show
	   @im_type_list = ImTypeList.find(params[:id])
  end

  # GET /im_type_lists/new
  def new
    @im_type_list = @im.ImTypeList.build
  end

  # GET /im_type_lists/1/edit
  def edit
     @im_type_list = ImTypeList.find(params[:id])
	end

  # POST /im_type_lists
  # POST /im_type_lists.json
  def create
    @im_type_list = @im.ImTypeList.build(im_type_list_params)

    respond_to do |format|
      if @im_type_list.save
        format.html { redirect_to @im_type_list, notice: 'Im type list was successfully created.' }
        format.json { render :show, status: :created, location: @im_type_list }
      else
        format.html { render :new }
        format.json { render json: @im_type_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /im_type_lists/1
  # PATCH/PUT /im_type_lists/1.json
  def update
	  @im_type_list = ImTypeList.find(params[:id])
    respond_to do |format|
      if @im_type_list.update(im_type_list_params)
        format.html { redirect_to @im_type_list, notice: 'Im type list was successfully updated.' }
        format.json { render :show, status: :ok, location: @im_type_list }
      else
        format.html { render :edit }
        format.json { render json: @im_type_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /im_type_lists/1
  # DELETE /im_type_lists/1.json
  def destroy
	  @im_type_list = ImTypeList.find(params[:id])
    @im_type_list.destroy
    respond_to do |format|
      format.html { redirect_to im_type_lists_url, notice: 'Im type list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_im_type_list
      @im_type_list = ImTypeList.find(params[:id])
    end
    
    def set_im
		  @im = Im.find(params[:id])
	  end
    # Never trust parameters from the scary internet, only allow the white list through.
    def im_type_list_params
      params.require(:im_type_list).permit(:uuid, :name)
    end
end
