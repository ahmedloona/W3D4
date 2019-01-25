# == Schema Information
#
# Table name: polls
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Poll < ApplicationRecord
    belongs_to :author,
        class_name: 'User',
        foreign_key: :user_id,
        primary_key: :id

    has_many :questions,
        class_name: 'Question',
        foreign_key: :poll_id,
        primary_key: :id

    has_many :answer_choice_options,
    through: :questions,
    # collection of questions
    # [q1, q2, q3]
    source: :answer_choices


    po = Poll.all.first
    po.answer_choice_options
    po.questions #collection
        # [q1, q2, q3]
        arr = []
    po.questions.each do |q|
        arr.concat(q.answer_choices)
    end


    
    return []
    po.answer_choices

    has_many :responses,
    through: :answer_choices,
    # AnswerChoice model
    source:

end
poll.questions # collection of questions
poll.answer_choices #colletion of answerchoices