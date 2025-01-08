# app/controllers/api/contributions_controller.rb
module Api
  class ContributionsController < ApplicationController

    def index
      puts "\e[38;2;255;165;0mindexアクションが呼び出されました\e[0m"
      @contributions = Contribution.all.order(date: :asc)
      render json:@contributions
    end

    def create
       puts "\e[38;2;255;165;0mcreateアクションが呼び出されました\e[0m"

      @contribution = Contribution.new(contribution_params)
      puts Contribution.new

      if @contribution.save
      render json: @contribution, status: :created
      else
        puts "\e[38;2;255;0;0mエラーが起きました\e[0m"
        render json: @contribution.errors, status: :unprocessable_entity
      end
    end


    private

    def contribution_params
      puts "受け取ったデータを表示します"
      puts :contribution
      params.require(:contribution).permit(:date, :contribution_count)
    end

  end
end
