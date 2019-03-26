class AddressesController < ApplicationController
  def new
    # debugger
    @user = User.find(params[:id])
    @address = Address.new
  end
  def edit
    @user = User.find(params[:id])
    # debugger
    @address = Address.find_by_user_id(params[:id])
  end

  def update
    # debugger
    @address = Address.find_by_user_id(params[:id])

    if @address.update(address_params)
      render('update')
    else
      render('edit')
    end
  end

  def create
    # debugger
    @address = Address.new(address_params)
    if @address.save
      render('create')
    else
      render('new')
    end
  end

  def delete
    @address = Address.find(params[:id])
    @address.destroy
  end

  private
  def address_params
    params.require(:address).permit(:street, :city, :country, :user_id)
  end
end
