class ApiController < ApplicationController
  doorkeeper_for :all

  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

end
