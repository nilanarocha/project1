# frozen_string_literal: true

class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
    # For some reason property model is not returning
    # Agent and PropertyType information
    # To Solve that, I have to request this data based on the
    # "@property.agents_id" for agents and
    # "@property.property_types_id" for property_types
    @property = Property.find params[:id]
    @agent = Agent.find(@property.agents_id)
    @property_type = PropertyType.find(@property.property_types_id)
  end
end
