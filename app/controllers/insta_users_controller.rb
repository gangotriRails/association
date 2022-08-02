class InstaUsersController < ApplicationController
  before_action :set_insta_user, only: %i[ show edit update destroy ]

  # GET /insta_users or /insta_users.json
  def index
    @insta_users = InstaUser.all
  end

  # GET /insta_users/1 or /insta_users/1.json
  def show
  end

  # GET /insta_users/new
  def new
    @insta_user = InstaUser.new
  end

  # GET /insta_users/1/edit
  def edit
  end

  # POST /insta_users or /insta_users.json
  def create
    @insta_user = InstaUser.new(insta_user_params)

    respond_to do |format|
      if @insta_user.save
        format.html { redirect_to insta_user_url(@insta_user), notice: "Insta user was successfully created." }
        format.json { render :show, status: :created, location: @insta_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @insta_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insta_users/1 or /insta_users/1.json
  def update
    respond_to do |format|
      if @insta_user.update(insta_user_params)
        format.html { redirect_to insta_user_url(@insta_user), notice: "Insta user was successfully updated." }
        format.json { render :show, status: :ok, location: @insta_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @insta_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insta_users/1 or /insta_users/1.json
  def destroy
    @insta_user.destroy

    respond_to do |format|
      format.html { redirect_to insta_users_url, notice: "Insta user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insta_user
      @insta_user = InstaUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def insta_user_params
      params.require(:insta_user).permit(:name)
    end
end
