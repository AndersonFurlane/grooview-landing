class MailsController < ApplicationController
  def index
    @mails = Mail.all
  end

  def new
    @mail = Mail.new
  end

  def create
    @mail = Mail.new(params[:mail])
    if @mail.save
      flash[:notice] = 'Cadastrado com sucesso!'
      redirect_to mails_path
    else
      render action: 'new'
    end
  end
end