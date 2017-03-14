class AbilitiesController < ApplicationController
  before_action :set_hero
  before_action :set_hero_ability, only: [:show, :update, :destroy]

  # GET /heroes/:hero_id/abilities
  def index
    json_response(@hero.abilities)
  end

  # GET /heros/:hero_id/abilitys/:id
  def show
    json_response(@ability)
  end

  # POST /heros/:hero_id/abilitys
  def create
    @hero.abilities.create!(ability_params)
    json_response(@hero, :created)
  end

  # PUT /heros/:hero_id/abilitys/:id
  def update
    @ability.update(ability_params)
    head :no_content
  end

  # DELETE /heros/:hero_id/abilitys/:id
  def destroy
    @ability.destroy
    head :no_content
  end

  private

  def ability_params
    params.permit(:name, :damage, :damage_type, :mana_cost, :cooldown, :ability_type, :hero_id, :more)
  end

  def set_hero
    @hero = Hero.find(params[:hero_id])
  end

  def set_hero_ability
    @ability = @hero.abilities.find_by!(id: params[:id]) if @hero
  end
end

