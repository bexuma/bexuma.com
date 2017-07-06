class TenThousandDaysController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_ten_thousand_day, only: [:show, :edit, :update, :destroy]

  # GET /ten_thousand_days
  # GET /ten_thousand_days.json
  def index
    @ten_thousand_days = TenThousandDay.all
  end

  # GET /ten_thousand_days/1
  # GET /ten_thousand_days/1.json
  def show
  end

  # GET /ten_thousand_days/new
  def new
    @ten_thousand_day = TenThousandDay.new
  end

  # GET /ten_thousand_days/1/edit
  def edit
  end

  # POST /ten_thousand_days
  # POST /ten_thousand_days.json
  def create
    @ten_thousand_day = TenThousandDay.new(ten_thousand_day_params)

    respond_to do |format|
      if @ten_thousand_day.save
        format.html { redirect_to @ten_thousand_day, notice: 'Ten thousand day was successfully created.' }
        format.json { render :show, status: :created, location: @ten_thousand_day }
      else
        format.html { render :new }
        format.json { render json: @ten_thousand_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ten_thousand_days/1
  # PATCH/PUT /ten_thousand_days/1.json
  def update
    respond_to do |format|
      if @ten_thousand_day.update(ten_thousand_day_params)
        format.html { redirect_to @ten_thousand_day, notice: 'Ten thousand day was successfully updated.' }
        format.json { render :show, status: :ok, location: @ten_thousand_day }
      else
        format.html { render :edit }
        format.json { render json: @ten_thousand_day.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ten_thousand_day
      @ten_thousand_day = TenThousandDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ten_thousand_day_params
      params.require(:ten_thousand_day).permit(:title, :body)
    end
end
