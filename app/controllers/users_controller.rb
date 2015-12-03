class UsersController < ApplicationController

  def index
    @indy_users = CLIENT.search_users("location:Indianapolis language:ruby",{page:2})[:items]
  end

end
