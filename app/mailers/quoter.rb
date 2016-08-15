class Quoter < ApplicationMailer
  
  default from: 'cotizaciones@rjmueblesparacomercio.com'
 
    def quote_email(user)
      @user = user
      mail(to: @user.email, subject: 'Recibimos tus datos')
      
    end
    
    def confirm_email(user)
      @user = user
      mail(to: 'cotizaciones@rjmueblesparacomercio.com',cc:'dorian_eiac@hotmail.com,rjmco@outlook.com', subject: 'Solicitud de cotización')  
    end
    
end
