# app/controllers/api/contributions_controller.rb
module Api
  class ContributionsController < ApplicationController
    def index
      @contributions = Contribution.all.order(date: :asc) # 日付順に全てのContributionを取得
      render json:@contributions
    end
    def create
    end

    private
    def contirbution_params
    end
  end
end
