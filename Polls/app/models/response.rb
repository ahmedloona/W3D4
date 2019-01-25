# == Schema Information
#
# Table name: responses
#
#  id              :bigint(8)        not null, primary key
#  user_id         :integer          not null
#  answerchoice_id :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Response < ApplicationRecord
    has_one :question 
        through: :answerchoice
            # answer choice object
            # answer_choice object.question
        source: :question
        # question object

    belongs_to :respondent
        class_name: 'User',
        foreign_key: :user_id,
        primary_key: :id,
    
    belongs_to :answerchoice
        class_name: 'AnswerChoice',
        foreign_key: :answerchoice_id,
        primary_key: :id
            
end


res = Response.all.first
res # instance from DB
where response.answerchoice.id = AnswerChoice.id
res.answerchoice # AnswerChoice object