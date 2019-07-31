# frozen_string_literal: true

class HomepageController < ApplicationController
  skip_before_action :authorize
  def index
    @property_types = PropertyType.all
  end
end
