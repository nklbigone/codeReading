class CodereadingsController < ApplicationController
  before_action :set_codereading, only: [:show, :edit, :update, :destroy]

  # GET /codereadings
  # GET /codereadings.json
  def index
    @codereadings = Codereading.all
  end

  # GET /codereadings/1
  # GET /codereadings/1.json
  def show
  end

  # GET /codereadings/new
  def new
    @codereading = Codereading.new
  end

  # GET /codereadings/1/edit
  def edit
  end

  # POST /codereadings
  # POST /codereadings.json
  def create
    @codereading = Codereading.new(codereading_params)

    respond_to do |format|
      if @codereading.save
        format.html { redirect_to @codereading, notice: 'Codereading was successfully created.' }
        format.json { render :show, status: :created, location: @codereading }
      else
        format.html { render :new }
        format.json { render json: @codereading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /codereadings/1
  # PATCH/PUT /codereadings/1.json
  def update
    respond_to do |format|
      if @codereading.update(codereading_params)
        format.html { redirect_to @codereading, notice: 'Codereading was successfully updated.' }
        format.json { render :show, status: :ok, location: @codereading }
      else
        format.html { render :edit }
        format.json { render json: @codereading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /codereadings/1
  # DELETE /codereadings/1.json
  def destroy
    @codereading.destroy
    respond_to do |format|
      format.html { redirect_to codereadings_url, notice: 'Codereading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_codereading
      @codereading = Codereading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def codereading_params
      params.require(:codereading).permit(:title, :content)
    end

    def subscribe
      #code which you can see in my previous tutorial
  
        subscription.save
        SlackNotifier::CLIENT.ping "💸 Boom! New purchase for #{subscription.items.data[0].plan.amount / 100}€ from #{current_user.email}! 💸"
  end
end
