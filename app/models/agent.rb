# frozen_string_literal: true

# == Schema Information
#
# Table name: agents
#
#  id         :bigint           not null, primary key
#  name       :text
#  email      :text
#  phone      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :text
#

class Agent < ApplicationRecord
  belongs_to :properties, class_name: 'Property', optional: true
end
