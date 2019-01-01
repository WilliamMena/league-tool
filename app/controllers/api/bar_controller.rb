module Api
  class BarController < ApplicationController
    before_action :set_bar, only: [:edit, :update, :destroy]

    def index
      render json: Bar.all
    end

    def create
      bar = Bar.new(bar_params)

      # if bar.save
      if bar.save
        render json: bar
      else
        render json: { message: bar.errors }, status: 400
      end
    end

    def show
      render json: Bar.find(params[:id])
    end

    def update
      if @bar.update(bar_params)
        render json: @bar
      else
        render json: { message: @bar.errors }, status: 400
      end
    end

    def destroy
      if @bar.destroy
        render json: { message: "Successfully deleted" }, status: 204
      else
        render json: { message: "Unable to remove this bar" }, status: 400
      end
    end

    private

    def set_bar
      @bar = Bar.find(params[:id])
    end

    def bar_params
      params.require(:bar).permit(:name,:address,:phone,:contact_name)
    end
  end
end
