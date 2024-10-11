# app/controllers/api/contributions_controller.rb
module Api
  class ContributionsController < ApplicationController
    def index
      @contributions = Contribution.all.order(date: :asc) # 日付順に全てのContributionを取得
      puts "indexアクション"
      render json:@contributions
    end
  end
end
