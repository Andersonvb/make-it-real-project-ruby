class Question
  attr_reader :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end

  def to_s
    "#{@question}"
  end
end