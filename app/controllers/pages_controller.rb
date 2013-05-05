class PagesController < ApplicationController
  def index
    @email = Mail.new
  end

  def create
    @email = Mail.new(params[:mail])
    if @email.save
      flash[:notice] = 'Cadastrado com sucesso!'
      redirect_to pages_path
    else
      render action: 'index'
    end
  end
end