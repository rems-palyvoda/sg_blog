class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    find_user
  end

  def edit
    find_user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render "new"
    end
  end

  def update
   find_user

    if @user.update(user_params)
      redirect_to @user
    else
      render "edit"
    end
  end

  def destroy
    find_user
    @user.destroy
    redirect_to posts_path
  end

  private

    def find_user
      @user = User.find(params[:id])
    end

    def user_params
       params.require(:user).permit(:name, :email,:password,
                                    :password_confirmation,
                                    :lat, :lng)
    end
end
