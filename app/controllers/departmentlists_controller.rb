class DepartmentlistsController < ApplicationController
  before_action :set_departmentlist, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  # GET /departmentlists
  # GET /departmentlists.json
  # GET /departmentlists/1
  # GET /departmentlists/1.json
  def show
    @departmentlist = Departmentlist.find(params[:id])
	end

  # GET /departmentlists/new
  def new
    @departmentlist = @user.Departmentlist.build
  end

  # GET /departmentlists/1/edit
  def edit
	  @departmentlist = Departmentlist.find(params[:id])
  end

  # POST /departmentlists
  # POST /departmentlists.json
  def create
    @departmentlist = @user.Departmentlist.build(departmentlist_params)

    respond_to do |format|
      if @departmentlist.save
        format.html { redirect_to @departmentlist, notice: 'Departmentlist was successfully created.' }
        format.json { render :show, status: :created, location: @departmentlist }
      else
        format.html { render :new }
        format.json { render json: @departmentlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departmentlists/1
  # PATCH/PUT /departmentlists/1.json
  def update
	  @departmentlist = Departmentlist.find(params[:id])
    respond_to do |format|
      if @departmentlist.update(departmentlist_params)
        format.html { redirect_to @departmentlist, notice: 'Departmentlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @departmentlist }
      else
        format.html { render :edit }
        format.json { render json: @departmentlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departmentlists/1
  # DELETE /departmentlists/1.json
  def destroy
	  @departmentlist = Departmentlist.find(params[:id])
    @departmentlist.destroy
    respond_to do |format|
      format.html { redirect_to departmentlists_url, notice: 'Departmentlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departmentlist
      @departmentlist = Departmentlist.find(params[:id])
    end
    
    def set_user
		  @user = User.find(params[:id])
	  end 

    # Never trust parameters from the scary internet, only allow the white list through.
    def departmentlist_params
      params.require(:departmentlist).permit(:uuid, :name)
    end
end
