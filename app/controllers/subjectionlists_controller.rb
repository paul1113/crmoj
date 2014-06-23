class SubjectionlistsController < ApplicationController
  before_action :set_subjectionlist, only: [:show, :edit, :update, :destroy]
  before_action :set_user
  # GET /subjectionlists
  # GET /subjectionlists.json
  # GET /subjectionlists/1
  # GET /subjectionlists/1.json
  def show
    @subjectionlist = Subjectionlist.find(params[:id])
	end

  # GET /subjectionlists/new
  def new
    @subjectionlist = @user.Subjectionlist.build
  end

  # GET /subjectionlists/1/edit
  def edit
	  @subjectionlist = Subjectionlist.find(params[:id])
  end

  # POST /subjectionlists
  # POST /subjectionlists.json
  def create
    @subjectionlist = @user.Subjectionlist.build(subjectionlist_params)

    respond_to do |format|
      if @subjectionlist.save
        format.html { redirect_to @subjectionlist, notice: 'Subjectionlist was successfully created.' }
        format.json { render :show, status: :created, location: @subjectionlist }
      else
        format.html { render :new }
        format.json { render json: @subjectionlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjectionlists/1
  # PATCH/PUT /subjectionlists/1.json
  def update
	  @subjectionlist = Subjectionlist.find(params[:id])
    respond_to do |format|
      if @subjectionlist.update(subjectionlist_params)
        format.html { redirect_to @subjectionlist, notice: 'Subjectionlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @subjectionlist }
      else
        format.html { render :edit }
        format.json { render json: @subjectionlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjectionlists/1
  # DELETE /subjectionlists/1.json
  def destroy
	  @subjectionlist = Subjectionlist.find(params[:id])
    @subjectionlist.destroy
    respond_to do |format|
      format.html { redirect_to subjectionlists_url, notice: 'Subjectionlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subjectionlist
      @subjectionlist = Subjectionlist.find(params[:id])
    end
    
    def set_user
		  @user = User.find(params[:id])
	  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subjectionlist_params
      params.require(:subjectionlist).permit(:uuid, :name)
    end
end
