class QuotesController < ApplicationController
 
  # GET /quotes/new
  def new
    @quote = Quote.new
  end

  # POST /quotes
  # POST /quotes.json
  def create
    @quote = Quote.new(quote_params)

    respond_to do |format|
      if @quote.valid?
        Quoter.quote_email(@quote).deliver_now
        Quoter.confirm_email(@quote).deliver_now
        format.html { redirect_to root_url, notice: 'Cotización enviada' }

      else
        format.html { redirect_to root_url(@quote),  notice: 'No se pudo enviar tu cotización'}

      end
    end
  end
  
  private
      def quote_params
        params.require(:quote).permit(:name, :email, :phone, :message)
      end

end
