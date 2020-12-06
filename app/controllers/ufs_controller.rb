
class UfsController < ActionController::API
      def by_date
        @client = Client.find_by(name: request.headers["X-CLIENTE"])
        #ponemos el log_in_count += 1 para contar las veces que hizo consulta un usuario y poder cobrar como lo pide el ejercicio
        @client.log_in_count += 1
        @client.save
        #con esto digo buscame 1(find_by) en date: con params (:date)
        @uf = Uf.find_by(date: params[:date])
        render json: @uf
      end
end
