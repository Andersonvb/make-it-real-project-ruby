require_relative "question"

class Questionnaire
  attr_reader :questions

  def initialize
    @questions = []
    build_questions
  end

  def question!
    @questions.shift
  end

  def empty?
    @questions.empty?
  end

  private
    def build_questions
      questions = File.read("./data.txt").split("\n\n")
      questions.each do |question|
        question, answer = question.split("\n")
        @questions << Question.new(question, answer)
      end
      @questions.shuffle!
    end
end