# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  def session_id
    @user = User.find(params[:id])
  end

  def generate_otp
    email = params[:email]
    @user = User.find_by(email: email)

    if @user
      @user.generate_otp # Generate and save the OTP
      @user.generate_otp_token # Generate and save the OTP token
      @user.save

      otp_verification_url = session_id_url(id: @user.id)
      UserMailer.send_otp_email(@user, @user.otp, otp_verification_url).deliver_now

      flash.now[:notice] = "OTP sent to your email." # Update the flash message here
    else
      flash.now[:alert] = 'User not found, You must complete your profile before logging in'
    end
    respond_to do |format|
      format.js
      format.html
    end
  end

  def verify_otp
    user = User.find_by(id: params[:id])

    if user && user.valid_otp?(params[:otp])
      sign_in(user) # Assuming you're using Devise or another authentication gem
      flash[:notice] = "Signed in successfully."
      redirect_to root_path # You can redirect to the desired path after successful sign-in
    else
      flash[:alert] = "Invalid OTP. Please try again."
      @user = user
      redirect_to new_user_session_path
    end
  end

  # omniauth login using google
  def after_sign_out_path_for(_resource_or_scope)
    new_user_session_path
  end

  def after_sign_in_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || root_path
  end


  # DELETE /resource/sign_out
  # def destroy
  #   session[:user_id] = nil
  #   redirect_to root_path, flash: { success: 'Logged Out' }
  # end

  #protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :otp])
  end
end
