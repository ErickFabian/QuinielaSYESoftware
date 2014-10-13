module QuinielasHelper
  def suscribed?(quiniela)
    quiniela.users.include?(current_user)
  end
end
