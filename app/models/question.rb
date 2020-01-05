class Question < ApplicationRecord

  def self.import(file)
    question_hash = []
    CSV.foreach(file.path, headers: true, encoding:'iso-8859-1:utf-8') do |row|
      question_hash << row.to_hash
    end
    raise
  end

end
