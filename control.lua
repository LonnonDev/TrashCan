script.on_event(defines.events.on_tick, function(event)
    local trashcan = game.surfaces['nauvis'].find_entities_filtered{name='trashcan', type="container"}
    print(trashcan)
    trashcan.get_inventory(defines.inventory.chest).clear()
  end)

