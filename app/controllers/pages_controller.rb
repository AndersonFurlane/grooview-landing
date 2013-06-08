class PagesController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      # UserMailer.welcome_email(mail).deliver # mail delivery
      flash[:notice] = 'Cadastrado com sucesso!'
      redirect_to pages_path
    else
      render action: 'index'
    end
  end
end
