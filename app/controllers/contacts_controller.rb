class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(params[:contact])
    if @contact.persisted?
      redirect_to root_path, notice: "The contact was added"
    else
      flash[:error] = "The contact couldn't be added"
      render :new
    end
  end
end
