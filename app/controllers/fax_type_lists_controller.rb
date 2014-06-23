class FaxTypeListsController < ApplicationController
  before_action :set_fax_type_list, only: [:show, :edit, :update, :destroy]
  before_action :set_fax
  # GET /fax_type_lists
  # GET /fax_type_lists.json
  # GET /fax_type_lists/1
  # GET /fax_type_lists/1.json
  def show
     @fax_type_list = FaxTypeList.find(params[:id])
	end


  # GET /fax_type_lists/new
  def new
    @fax_type_list = @fax.FaxTypeList.build
  end

  # GET /fax_type_lists/1/edit
  def edit
	  @fax_type_list = FaxTypeList.find(params[:id])
  end

  # POST /fax_type_lists
  # POST /fax_type_lists.json
  def create
    @fax_type_list = @fax.FaxTypeList.build(fax_type_list_params)

    respond_to do |format|
      if @fax_type_list.save
        format.html { redirect_to @fax_type_list, notice: 'Fax type list was successfully created.' }
        format.json { render :show, status: :created, location: @fax_type_list }
      else
        format.html { render :new }
        format.json { render json: @fax_type_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fax_type_lists/1
  # PATCH/PUT /fax_type_lists/1.json
  def update
	  @fax_type_list = FaxTypeList.find(params[:id])
    respond_to do |format|
      if @fax_type_list.update(fax_type_list_params)
        format.html { redirect_to @fax_type_list, notice: 'Fax type list was successfully updated.' }
        format.json { render :show, status: :ok, location: @fax_type_list }
      else
        format.html { render :edit }
        format.json { render json: @fax_type_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fax_type_lists/1
  # DELETE /fax_type_lists/1.json
  def destroy
	  @fax_type_list = FaxTypeList.find(params[:id])
    @fax_type_list.destroy
    respond_to do |format|
      format.html { redirect_to fax_type_lists_url, notice: 'Fax type list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fax_type_list
      @fax_type_list = FaxTypeList.find(params[:id])
    end
    
    def set_fax
		  @fax = Fax.find(params[:id])
	  end
    # Never trust parameters from the scary internet, only allow the white list through.
    def fax_type_list_params
      params.require(:fax_type_list).permit(:uuid, :name)
    end
end
