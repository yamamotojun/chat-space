  class MessegesController < ApplicationController

    before_action :move_to_index, except: :index

    def index
    end

    def move_to_index
      redirect_to action: :sign_up unless user_signed_in?
    end

  end
