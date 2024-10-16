# app/controllers/api/contributions_controller.rb
module Api
  class ContributionsController < ApplicationController

    def index
      @contributions = Contribution.all.order(date: :asc) # 日付順に全てのContributionを取得
      render json:@contributions
    end
    def create
      @contirbution = Contirbution.new(contirbution_params)

      if @contirbution.save
      render json: @contirbution, status: :created
      else
        render json: @contirbution.errors, status: :unprocessable_entity
      end
    end

    private

    def contirbution_params
      puts "受け取ったデータ"
      puts :contirbution
      params.require(:contirbution).permit(:date, :contribution_count)
    end

  end
end
