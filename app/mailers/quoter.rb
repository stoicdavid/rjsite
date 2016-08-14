class Quoter < ApplicationMailer
  
  default from: 'rjamor@outlook.com'
 
    def quote_email(user)
      @user = user
      mail(to: @user.email, subject: 'Recibimos tus datos')
      
    end
    
    def confirm_email(user)
      @user = user
      mail(to: 'rjamor@outlook.com',cc:'dorian_eiac@hotmail.com', bcc:'stoicdavid@gmail.com', subject: 'Solicitud de cotización')  
    end
    
end
