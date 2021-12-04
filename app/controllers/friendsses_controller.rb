class FriendssesController < ApplicationController
  before_action :set_friendss, only: %i[ show edit update destroy ]

  # GET /friendsses or /friendsses.json
  def index
    @friendsses = Friendss.all
  end

  # GET /friendsses/1 or /friendsses/1.json
  def show
  end

  # GET /friendsses/new
  def new
    @friendss = Friendss.new
  end

  # GET /friendsses/1/edit
  def edit
  end

  # POST /friendsses or /friendsses.json
  def create
    @friendss = Friendss.new(friendss_params)

    respond_to do |format|
      if @friendss.save
        format.html { redirect_to @friendss, notice: "Friendss was successfully created." }
        format.json { render :show, status: :created, location: @friendss }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friendss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friendsses/1 or /friendsses/1.json
  def update
    respond_to do |format|
      if @friendss.update(friendss_params)
        format.html { redirect_to @friendss, notice: "Friendss was successfully updated." }
        format.json { render :show, status: :ok, location: @friendss }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friendss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friendsses/1 or /friendsses/1.json
  def destroy
    @friendss.destroy
    respond_to do |format|
      format.html { redirect_to friendsses_url, notice: "Friendss was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendss
      @friendss = Friendss.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friendss_params
      params.require(:friendss).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
