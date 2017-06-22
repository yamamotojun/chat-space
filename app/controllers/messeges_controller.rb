  class MessegesController < ApplicationController

    before_action :move_to_sign_up, except: :sign_up

    def index
    end

    def move_to_index
      redirect_to action: :sign_up unless user_signed_in?
    end

  end
