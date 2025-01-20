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
      puts "Params: #{params.inspect}"
      @contribution = Contribution.new(contribution_params)

      if @contribution.save
      render json: @contribution, status: :created
      else
        puts "\e[38;2;255;0;0mエラーが起きました\e[0m"
        # render json: @contribution.errors, status: :unprocessable_entity
        render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity

      end
    end


    private

    # def contribution_params
    #   puts "contribution_paramsの起動"
    #   params.require(:contributionDays).permit(:date, :contribution_count)
    # end

    def contribution_params
      puts "contribution_paramsを起動"

      # _json 配列を取得
      contribution_days = params.require(:_json)
      puts "渡ってきたデータを表示します"
      puts contribution_days


      # 配列内のデータをフラットにして必要なキーだけを許可
      contribution_days.flat_map { |entry|
        puts entry
        entry.require(:contributionDays).map do |day|
          puts day
          day.permit(:date, :contributionCount)
        end
      }
    end

  end
end
