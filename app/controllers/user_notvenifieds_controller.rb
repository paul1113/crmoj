class UserNotvenifiedsController < ApplicationController
  before_action :set_user_notvenified, only: [:show, :edit, :update, :destroy]

  # GET /user_notvenifieds
  # GET /user_notvenifieds.json
  def index
    @user_notvenifieds = UserNotvenified.all
  end

  # GET /user_notvenifieds/1
  # GET /user_notvenifieds/1.json
  def show
  end

  # GET /user_notvenifieds/new
  def new
    @user_notvenified = UserNotvenified.new
  end

  # GET /user_notvenifieds/1/edit
  def edit
  end

  # POST /user_notvenifieds
  # POST /user_notvenifieds.json
  def create
    @user_notvenified = UserNotvenified.new(user_notvenified_params)

    respond_to do |format|
      if @user_notvenified.save
        format.html { redirect_to @user_notvenified, notice: 'User notvenified was successfully created.' }
        format.json { render :show, status: :created, location: @user_notvenified }
      else
        format.html { render :new }
        format.json { render json: @user_notvenified.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_notvenifieds/1
  # PATCH/PUT /user_notvenifieds/1.json
  def update
    respond_to do |format|
      if @user_notvenified.update(user_notvenified_params)
        format.html { redirect_to @user_notvenified, notice: 'User notvenified was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_notvenified }
      else
        format.html { render :edit }
        format.json { render json: @user_notvenified.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_notvenifieds/1
  # DELETE /user_notvenifieds/1.json
  def destroy
    @user_notvenified.destroy
    respond_to do |format|
      format.html { redirect_to user_notvenifieds_url, notice: 'User notvenified was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_notvenified
      @user_notvenified = UserNotvenified.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_notvenified_params
      params.require(:user_notvenified).permit(:name, :uuid, :birthday, :property, :mobile, :sender, :mail, :department, :position, :area, :subjection, :tel, :fax, :im, :id_card, :address, :postcode)
    end
end
