class AddressTypeListsController < ApplicationController
  before_action :set_address_type_list, only: [:show, :edit, :update, :destroy]
  before_action :set_address
  # GET /address_type_lists
  # GET /address_type_lists.json
  # GET /address_type_lists/1
  # GET /address_type_lists/1.json
  def show
    @address_type_list = AddressTypeList.find(params[:id])
	end

  # GET /address_type_lists/new
  def new
    @address_type_list = @address.AddressTypeList.build
  end

  # GET /address_type_lists/1/edit
  def edit
	   @address_type_list = AddressTypeList.find(params[:id])
  end

  # POST /address_type_lists
  # POST /address_type_lists.json
  def create
    @address_type_list = @address.AddressTypeList.build(address_type_list_params)

    respond_to do |format|
      if @address_type_list.save
        format.html { redirect_to @address_type_list, notice: 'Address type list was successfully created.' }
        format.json { render :show, status: :created, location: @address_type_list }
      else
        format.html { render :new }
        format.json { render json: @address_type_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /address_type_lists/1
  # PATCH/PUT /address_type_lists/1.json
  def update
	  @address_type_list = AddressTypeList.find(params[:id])
    respond_to do |format|
      if @address_type_list.update(address_type_list_params)
        format.html { redirect_to @address_type_list, notice: 'Address type list was successfully updated.' }
        format.json { render :show, status: :ok, location: @address_type_list }
      else
        format.html { render :edit }
        format.json { render json: @address_type_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_type_lists/1
  # DELETE /address_type_lists/1.json
  def destroy
	  @address_type_list = AddressTypeList.find(params[:id])
    @address_type_list.destroy
    respond_to do |format|
      format.html { redirect_to address_type_lists_url, notice: 'Address type list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address_type_list
      @address_type_list = AddressTypeList.find(params[:id])
    end   
		 
		def set_address
		   @address = Address.find(params[:id])
	  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_type_list_params
      params.require(:address_type_list).permit(:uuid, :name)
    end
end
