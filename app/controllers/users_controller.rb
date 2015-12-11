class UsersController < ApplicationController
  before_filter :skip_password_attribute, only: :update

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.current_login = Time.now
    if @user.save
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    current_user.diagnosed = session[':new_diag']
    current_user.save
    redirect_to current_user
  end

  def show
    @user = User.find(params[:id])
    if @user.diagnosed != "None"
      if @user.diagnosed == "Yin Deficiency"
        @foods = Food.where("tonifies = 'Yin'")
      end
      if @user.diagnosed == "Yang Deficiency"
        @foods = Food.where("tonifies = 'Yang'")
      end
      if @user.diagnosed == "Qi Deficiency"
        @foods = Food.where("tonifies = 'Qi'")
      end
      if @user.diagnosed == "Blood Deficiency"
        @foods = Food.where("tonifies = 'Blood'")
      end
      if @user.diagnosed == "Internal Heat"
        @foods = Food.where("regulates = 'Heat'")
      end
      if @user.diagnosed == "Internal Cold"
        @foods = Food.where("regulates = 'Cold'")
      end
      if @user.diagnosed == "Internal Damp"
        @foods = Food.where("regulates = 'Damp'")
      end
      if @user.diagnosed == "Qi Stagnation"
        @foods = Food.where("regulates = 'Qi_Circulation'")
      end
      if @user.diagnosed == "Blood Stagnation"
        @foods = Food.where("regulates = 'Blood_Circulation'")
      end
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_path
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

  def skip_password_attribute
    if params[:password].blank? && params[:password_validation].blank?
      params.except!(:password, :password_validation)
    end
  end
end
