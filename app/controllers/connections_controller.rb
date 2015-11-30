class ConnectionsController < ApplicationController
	before_action :set_connection, only: [:destroy]

  def create
  	connection = current_user.connections.create_from_omniauth(auth_hash)
  	if connection.save
  		redirect_to dashboard_path, notice: "Successfully connected "
  	else
  		redirect_to dashboard_path, notice: "I'm sorry, you weren't connected this time "
  	end
  end

  def destroy
  	@connection.destroy
  	redirect_to dashboard_path, notice: "Successfully disconnected "
  end

  private

  def set_connection
  	@connection = Connection.find(params[:id])
  end

  def auth_hash
  	request.env['omniauth.auth']
  end
end
