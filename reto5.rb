require_relative "questionnaire"

puts "¡Bienvenido a reto 5! Para jugar, solo ingresa el termino correcto para cada una de las definiciones, ¿Listo? ¡Vamos!\n\n"

questionnaire = Questionnaire.new
question = questionnaire.question! 

loop do
  puts "- #{question.question}"
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


