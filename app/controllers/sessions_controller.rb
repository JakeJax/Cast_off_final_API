class SessionsController < ApplicationController
  skip_before_action :authenticate_token, only: [:create]

  def create
    if login(params[:email], params[:password])
      session = current_user.create_session
      render json: session
    else
      render json: { errors: ["Invalid credentials"] }, status: :forbidden
    end
  end

  def destroy
    current_user.destroy_session
    logout
    render_nothing
  end

end

# class SessionsController < ApplicationController
#   def new
#   end

#   def create
#     user = User.find_by(email: params[:email])

#     if user && user.authenticate(params[:password])
#       if user.admin?
#         session[:user_id] = user.id
#         session[:admin_id] = user.id
#         session[:can_switch] = true
#         redirect_to movies_path, notice: "Welcome back, #{user.firstname}! (ADMIN)"
#       else
#         session[:user_id] = user.id
#         redirect_to movies_path, notice: "Welcome back, #{user.firstname}!"
#       end
#     else
#       flash.now[:alert] = "Log in failed..."
#       render :new
#     end
#   end

#   def destroy
#     user = User.find(session[:user_id])
#       session[:user_id] = nil
#       redirect_to movies_path, notice: "Adios!"
#   end
# end
