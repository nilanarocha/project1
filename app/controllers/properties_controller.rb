# frozen_string_literal: true

class PropertiesController < ApplicationController
  def index
    # Showing the text used for search
    @search = params[:search]
    # Search all properties with the search address
    # searching case insensitive "LOWER(address) LIKE LOWER('%#{@search}%')"
    @properties = Property.where("LOWER(address) LIKE LOWER('%#{@search}%') OR LOWER(description) LIKE LOWER('%#{@search}%')")
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
