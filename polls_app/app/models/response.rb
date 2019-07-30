# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  user_id          :integer          not null
#  answer_choice_id :integer          not null
#

class Response < ApplicationRecord
  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: 'User'

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: 'AnswerChoice'

  has_one :question,
    through: :answer_choice,
    source: :question

  #return all the other Response objects for    the same Question
  def sibling_responses
    # AnswerChoice.select(:body).joins(:question).where(questions: {id: answer_choice.id}).group(:questions)
    question.responses.where.not('id = ?', self.id)
  end   
end
