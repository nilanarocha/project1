# frozen_string_literal: true

class HomepageController < ApplicationController
  def index
    @property_types = PropertyType.all
  end
end
