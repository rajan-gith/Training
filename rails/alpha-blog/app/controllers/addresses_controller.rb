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
      redirect_to show_user_path(:id =>@address.user_id), format: 'js'
    else
      render('edit')
    end
  end

  def create
    # debugger
    @address = Address.new(address_params)
    if @address.save
      redirect_to show_user_path(:id =>@address.user_id), format: 'js'
    else
      render('new')
    end
  end

  def delete
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to show_user_path
  end

  private
  def address_params
    params.require(:address).permit(:street, :city, :country, :user_id)
  end
end
