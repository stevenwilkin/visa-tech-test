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

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      redirect_to root_path, notice: "The contact was updated"
    else
      flash[:error] = "The contact couldn't be updated"
      render :edit
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    if @contact.destroy
      flash[:notice] = "The contact was deleted"
    else
      flash[:error] = "The contact couldn't be deleted"
    end
    redirect_to root_path
  end
end
