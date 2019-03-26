class AddressesController < ApplicationController
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
  end

  def delete
  end

  private
  def address_params
    params.require(:address).permit(:street, :city, :country, :user_id)
  end
end
