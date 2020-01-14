class Question < ApplicationRecord

  def self.import(file)
    Question.destroy_all
    question_hash = []
    CSV.foreach(file.path, headers: true, encoding:'iso-8859-1:utf-8') do |row|
      question_hash << row.to_hash
    end
    question_hash.each do |question|
      Question.create(content: question['content'], intimacy_level: question['intimacy_level'].to_i, fun_level: question['fun_level'].to_i)
    end
  end

  def self.random
    offset(rand(count))
  end
end
