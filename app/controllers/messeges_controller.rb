  class MessegesController < ApplicationController

    before_action :authenticate_user!, expect: :index

    def index
    end

    def move_to_index
      # redirect_to action: :sign_in unless user_signed_in?
    end

  end
