class UserMailer < ApplicationMailer
  include SendGrid

  def welcome_email(user)
    @user = user
    mail to: @user.email, subject: "Velkommen!"
  end

  def change_pw_confirmed(user)
    @user = user
    mail to: @user.email, subject: "Password changed successfully! :)"
  end

  def reset_pw_confirmed(user, new_password)
    @user = user
    @pw = new_password
    @url = "http://thangomango.herokuapp.com/setting"
    mail to: @user.email, subject: "Your password has been reset"
  end

  def deliver_product(current_user, current_item, cart)
    @user = current_user
    @cart = cart
    @item = current_item

    mail to: @user.email, subject: "Here are your delivery!"
  end

  def send_news_to_sub(email, item)
    @item = item
    mail to: email, subject: "Great news! New products for you!"
  end

  def send_thang_email(current_user, inputname, inputemail, inputsubject ,inputmessage)
    @user = current_user
    @inputname = inputname
    @inputemail = inputemail
    @inputsubject = inputsubject
    @inputmessage = inputmessage

    if inputsubject == 'na'
      @inputsubject = 'Annet'
    end




    mail to: 'lyern52@gmail.com', cc: inputemail, subject: @inputsubject
  end
end
