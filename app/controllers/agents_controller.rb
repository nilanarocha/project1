# frozen_string_literal: true

class AgentsController < ApplicationController
  def index
    @agents = Agent.all
   end

  def show
    @agent = Agent.find params[:id]
    @properties = Property.where(agents_id: params[:id]).to_a
  end
end
