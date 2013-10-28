class RegistrationController < Devise::RegistrationsController

def new

@user= User.new
@detail = Detail.new
end

def create

@user= User.new

@user.email = params[:user][:email]
@user.password = params[:user][:password]
@user.password_confirmation =params[:user][:password_confirmation]

@detail = Detail.new
@detail.name = params[:detail][:name]
@detail.gender = params[:detail][:gender]
@detail.address = params[:detail][:address]
@user.valid?
if @user.errors.blank?

@user.save
@detail.user = @user
@detail.save
redirect_to new_user_session_path
else
render :action => "new"
end
end

end
