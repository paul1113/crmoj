class PhoneTypeListsController < ApplicationController
  before_action :set_phone_type_list, only: [:show, :edit, :update, :destroy]
  before_action :set_phone
  # GET /phone_type_lists
  # GET /phone_type_lists.json
  # GET /phone_type_lists/1
  # GET /phone_type_lists/1.json
  def show
     @phone_type_list = PhoneTypeList.find(params[:id])
	end

  # GET /phone_type_lists/new
  def new
    @phone_type_list = @phone.PhoneTypeList.build
  end

  # GET /phone_type_lists/1/edit
  def edit
	  @phone_type_list = PhoneTypeList.find(params[:id])
  end

  # POST /phone_type_lists
  # POST /phone_type_lists.json
  def create
    @phone_type_list = @phone.PhoneTypeList.build(phone_type_list_params)

    respond_to do |format|
      if @phone_type_list.save
        format.html { redirect_to @phone_type_list, notice: 'Phone type list was successfully created.' }
        format.json { render :show, status: :created, location: @phone_type_list }
      else
        format.html { render :new }
        format.json { render json: @phone_type_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_type_lists/1
  # PATCH/PUT /phone_type_lists/1.json
  def update
	  @phone_type_list = PhoneTypeList.find(params[:id])
    respond_to do |format|
      if @phone_type_list.update(phone_type_list_params)
        format.html { redirect_to @phone_type_list, notice: 'Phone type list was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_type_list }
      else
        format.html { render :edit }
        format.json { render json: @phone_type_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_type_lists/1
  # DELETE /phone_type_lists/1.json
  def destroy
	  @phone_type_list = PhoneTypeList.find(params[:id])
    @phone_type_list.destroy
    respond_to do |format|
      format.html { redirect_to phone_type_lists_url, notice: 'Phone type list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_type_list
      @phone_type_list = PhoneTypeList.find(params[:id])
    end
    
    def set_phone
		  @phone = Phone.find(params[:id])
	  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_type_list_params
      params.require(:phone_type_list).permit(:uuid, :name)
    end
end
