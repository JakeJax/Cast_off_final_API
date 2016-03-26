class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  # skip_before_action :verify_authenticity_token
  before_action :restrict_access

  protected

  def restrict_access
    unless current_user
      render json: "Access Denied", status: 401
    end
  end


  def current_user
    token = request.headers["HTTP_AUTHORIZATION"]
    session = Session.find_by(authentication_token: token)
    @current_user ||= session.user if session
  end

  # def is_admin?
  #   if current_user
  #     (@current_user.admin?.nil? || @current_user.admin? == false) ? false : true
  #   end
  # end



  # def current_admin
  #   @current_admin ||= User.find(session[:admin_id]) if session[:admin_id]
  # end

  def is_switched?
    session[:can_switch] == false
  end

  
  helper_method :is_admin?
  helper_method :current_user
  helper_method :is_switched?
  helper_method :current_admin

 

 

end
