# frozen_string_literal: true

# == Schema Information
#
# Table name: property_types
#
#  id         :bigint           not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PropertyType < ApplicationRecord
  belongs_to :properties, class_name: 'Property', optional: true
end
