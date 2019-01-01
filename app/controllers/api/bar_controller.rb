require 'json'
module Api
  class BarController < ApplicationController
    def index
      render json: Bar.all
    end

    def new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def bar_params
      params.require(:bar).permit(:name,:address,:phone,:contact_name)
    end
  end
end
