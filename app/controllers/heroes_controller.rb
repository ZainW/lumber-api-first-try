class HeroesController < ApplicationController
  before_action :set_hero, only: [:show, :update, :destroy]

  # GET /heroes
  def index
    @heroes = Hero.all
    json_response(@heroes)
  end

  # POST /heroes
  def create
    @hero = Hero.create!(hero_params)
    json_response(@hero, :created)
  end

  # GET /heroes/:id
  def show
    json_response(@hero)
  end

  # PUT /heroes/:id
  def update
    @hero.update(hero_params)
    head :no_content
  end

  # DELETE /heroes/:id
  def destroy
    @hero.destroy
    head :no_content
  end

  private

  def hero_params
    # whitelist params
    params.permit(:name, :base_str, :base_agi, :base_int, :add_str, :add_agi, :add_int, :move_speed, :turn_rate, :attack_type, :talents, :hero_type, :attack_range)
  end

  def set_hero
    # @hero = Hero.find_by!(name: params[:name])
    @hero = Hero.where('name LIKE ?', "%#{params[:name]}%")
  end
end

