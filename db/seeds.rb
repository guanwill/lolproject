# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require('httparty')
#generate data once and put it into our database. hence the commenting after seeding(integrating)

# # --------GET RUNE LIST API---------
# @rune_index = HTTParty.get "https://global.api.pvp.net/api/lol/static-data/oce/v1.2/rune?runeListData=all&api_key=f94d23f9-73a9-43e6-bf03-62156d895c2a"
# @rune_index["data"].each do |id, rune|
#   @rune = Rune.create({
#     :rune_id => id,
#     :rune_name => rune["name"],
#     :rune_description => rune["description"],
#     :rune_image => rune["image"]["full"]
#   })
# end
#
# # ---------GET MASTERIES LIST API---------
# @mastery_index = HTTParty.get "https://global.api.pvp.net/api/lol/static-data/oce/v1.2/mastery?masteryListData=all&api_key=f94d23f9-73a9-43e6-bf03-62156d895c2a"
# @mastery_index["data"].each do |id, mastery|
#   @mastery = Mastery.create({
#     :mastery_id => mastery["id"],
#     :mastery_name => mastery["name"],
#     :mastery_description => mastery["sanitizedDescription"],
#     :mastery_rank => mastery["ranks"],
#     :mastery_image => mastery["image"]["full"]
#   })
# end
#
# # ----------GET CHAMPION LIST API---------
# @champion_index = HTTParty.get "https://global.api.pvp.net/api/lol/static-data/oce/v1.2/champion?champData=all&api_key=f94d23f9-73a9-43e6-bf03-62156d895c2a"
# @champion_index["data"].each do |id, champion|
#   @champion = Champion.create({
#     :champion_id => champion["id"],
#     :champion_name => champion["name"],
#     :champion_image => champion["image"]["full"]
#   })
# end
#
# # ----------GET SPELL LIST API---------
# @spell_index = HTTParty.get "https://global.api.pvp.net/api/lol/static-data/oce/v1.2/summoner-spell?spellData=all&api_key=f94d23f9-73a9-43e6-bf03-62156d895c2a"
# @spell_index["data"].each do |id, spell|
#   @spell = Spell.create({
#     :spell_id => spell["id"],
#     :spell_name => spell["name"],
#     :spell_description => spell["description"],
#     :spell_image => spell["image"]["full"]
#   })
# end
#
# # ----------GET ITEM LIST API---------
# @item_index = HTTParty.get "https://global.api.pvp.net/api/lol/static-data/oce/v1.2/item?itemListData=all&api_key=f94d23f9-73a9-43e6-bf03-62156d895c2a"
# @item_index["data"].each do |id, item|
#   @item = Item.create({
#     :item_id => item["id"],
#     :item_name => item["name"],
#     :item_description => item["description"],
#     :item_image => item["image"]["full"]
#   })
# end
#
# # ----------GET MAP LIST API---------
# @map_index = HTTParty.get "https://global.api.pvp.net/api/lol/static-data/oce/v1.2/map?api_key=f94d23f9-73a9-43e6-bf03-62156d895c2a"
# @map_index["data"].each do |id, map|
#   @map = Map.create({
#     :map_id => map["mapId"],
#     :map_name => map["mapName"],
#   })
# end
