script.on_event(defines.events.on_built_entity, function(event)
  if event.created_entity.name == "trashcan" then
    event.created_entity.remove_unfiltered_items = true
  end
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
  if event.created_entity.name == "trashcan" then
    event.created_entity.remove_unfiltered_items = true
  end
end)

