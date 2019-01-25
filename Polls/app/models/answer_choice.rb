# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  text        :string           not null
#  question_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AnswerChoice < ApplicationRecord
    belong_to :question 
        class_name: 'Question',
        foreign_key: :question_id,
        primary_key: :id
    
    has_many :responses
        class_name: 'Response',
        foreign_key: :answerchoice_id,
        primary_key: :id
end

ac = AnswerChoice.all.first
ac # instance of AnswerChoice
WHERE AnswerChoice.question_id = Question.id
ac.question # 