# frozen_string_literal: true

# == Schema Information
#
# Table name: properties
#
#  id                :bigint           not null, primary key
#  address           :text
#  description       :text
#  location          :text
#  image             :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  agents_id         :bigint
#  property_types_id :bigint
#

class Property < ApplicationRecord
  has_many :property_types
  has_many :agents
end
