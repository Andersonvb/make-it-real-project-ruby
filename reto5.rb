=begin

Lógica:

  1. Bienvenida
  2. Definición: aparece la definición en pantalla y espera a que el usuario ingrese su respuesta
  3. Evaluamos la respuesta del usuario
    3.1 Si es verdad pasa a la siguiente pregunta, 
    3.2 Si no es verdad entonces le dice que lo intente de nuevo




Guardamos las definiciones (preguntas) en un txt con el siguiente formato:
  <definicion>
  <respuesta>
  <linea en blanco>
  <definicion>
  <respuesta>

Clases:

  1. Clase pregunta
    @pregunta 
    @respuesta
    
  2. Clase Cuestionario
    @preguntas
    
    private
      build_preguntas


Funcionamiento:

puts Buenas como estan? Bienvenidos vamos a jugar.

cuestionario = Cuestionario.new

  # Sacamos una pregunta del cuestionario, IMPORTANTE: eso elimina la pregunta del cuestionario, para que no se repita
question = cuestionario.question

until cuestionario.empty?

  puts question
  respuesta = gets.chomp

  if respuesta == question.respuesta
      # Obtiene una nueva pregunta
    question = cuestionario.question 
  else
    puts Respuesta incorrecta, intentelo de nuevo
  end

end

puts "Felicidadessss pasaste todas las preguntas"


=end

require_relative "questionnaire"

puts "¡Bienvenido a reto 5! Para jugar, solo ingresa el termino correcto para cada una de las definiciones, ¿Listo? ¡Vamos!\n\n"

questionnaire = Questionnaire.new
question = questionnaire.question! 

loop do
  puts "- #{question}"
  print "  Adivinar: "
  user_answer = gets.chomp

  if user_answer == question.answer
    print "  ¡Correcto! "
    break if questionnaire.empty?
    puts "Vamos con la siguiente pregunta.\n\n"
    question = questionnaire.question!
  else
    puts "  ¡Incorrecto! Trata de nuevo.\n\n"
  end
end

puts "\n\n¡Felicidades, has contestado correctamente todas las preguntas!"


