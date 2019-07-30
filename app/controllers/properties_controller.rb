# frozen_string_literal: true

class PropertiesController < ApplicationController
  def index
    # Showing the text used for search
    @search = params[:search]
    @property_type = params[:property_type]
    sql_complement = []
    # Checking if search was informed via search form
    # if informed, should add to the query
    # .blank? checking if the variable exist
    unless @search.blank?
      # searching case insensitive "LOWER(address) LIKE LOWER('%#{@search}%')"
      sql_complement.push("(LOWER(address) LIKE LOWER('%#{@search}%') OR LOWER(description) LIKE LOWER('%#{@search}%'))")
    end

    # Checking if property type was informed via search form
    # if informed, should add to the query

    if !@property_type.blank? && @property_type != 'all'
      # seaching only for the specified property type
      sql_complement.push("property_types_id=#{PropertyType.find_by(name: @property_type).id}")
    end

    # Search all properties with the search address
    @properties = Property.where(sql_complement.join(' AND ').to_s)
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
