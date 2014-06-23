class EmailTypeListsController < ApplicationController
  before_action :set_email_type_list, only: [:show, :edit, :update, :destroy]
  before_action :set_email
  # GET /email_type_lists
  # GET /email_type_lists.json
  # GET /email_type_lists/1
  # GET /email_type_lists/1.json
  def show
     @email_type_list = EmailTypeList.find(params[:id])
	end

  # GET /email_type_lists/new
  def new
    @email_type_list = @email.EmailTypeList.build
  end

  # GET /email_type_lists/1/edit
  def edit
	  @email_type_list = EmailTypeList.find(params[:id])
  end

  # POST /email_type_lists
  # POST /email_type_lists.json
  def create
    @email_type_list = @email.EmailTypeList.build(email_type_list_params)

    respond_to do |format|
      if @email_type_list.save
        format.html { redirect_to @email_type_list, notice: 'Email type list was successfully created.' }
        format.json { render :show, status: :created, location: @email_type_list }
      else
        format.html { render :new }
        format.json { render json: @email_type_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /email_type_lists/1
  # PATCH/PUT /email_type_lists/1.json
  def update
	  @email_type_list = EmailTypeList.find(params[:id])
    respond_to do |format|
      if @email_type_list.update(email_type_list_params)
        format.html { redirect_to @email_type_list, notice: 'Email type list was successfully updated.' }
        format.json { render :show, status: :ok, location: @email_type_list }
      else
        format.html { render :edit }
        format.json { render json: @email_type_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_type_lists/1
  # DELETE /email_type_lists/1.json
  def destroy
	  @email_type_list = EmailTypeList.find(params[:id])
    @email_type_list.destroy
    respond_to do |format|
      format.html { redirect_to email_type_lists_url, notice: 'Email type list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_type_list
      @email_type_list = EmailTypeList.find(params[:id])
    end
    
    def set_email
		  @email = Email.find(params[:id])
  	end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_type_list_params
      params.require(:email_type_list).permit(:uuid, :name)
    end
end
