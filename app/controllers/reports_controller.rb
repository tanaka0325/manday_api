class ReportsController < ApplicationController
  before_action :authenticate_user
  before_action :set_report, only: [:show, :update, :destroy]

  def index
    @reports = Report.all
    render json: @reports
  end

  def show
    render json: @report
  end

  def date
    @reports = Report.where('date' => params[:date])
    render json: @reports
  end

  def create
    @report = Report.new(report_params)

    if @report.save
      render json: @report, status: :created, location: @report
    else
      render json: @report.errors, status: :unprocessable_entity
    end
  end

  def update
    if @report.update(report_params)
      render json: @report
    else
      render json: @report.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @report.destroy
    render json: {}
  end

  private

    def set_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.require(:report).permit(:user_id, :date, :status, :body, :title)
    end

end
