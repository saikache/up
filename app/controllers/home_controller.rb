class HomeController < ApplicationController
  def index
  end

  def contact
  end

  def about
  end

  def get_a_quote
  end

  def be_a_partner
  end

  def send_data
    unless params['email'].blank? && !params['fromContact'].blank?
      SendEmailMailer.deliverForm(params).deliver_now
      redirect_to root_path,  notice: "Successfully submited your request"
    end
  end



  private

  def permit
    params.permit(:fname, :frequency, :lname, :email, :itemCount, :meterialFormate, :message, :fromContact)
  end
end
