class UsersController < ApplicationController

  def index
    @indy_users = CLIENT.search_users("location:Indianapolis language:ruby",options = {page:params['page'].to_i})[:items].sort_by{|u|CLIENT.user(u.id).created_at}
  end

end
