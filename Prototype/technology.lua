data:extend{
    {
        type = "technology",
        name = "trashcan",
        icon_size = 64,
        icon = "__TrashCan__/Graphics/hr-trashcan.png",
        effects = 
        {
            {
                type = "unlock-recipe",
                recipe = "trashcan"
            }
        },
        unit = 
        {
            count = 100,
            ingredients =
            {
                {"automation-science-pack", 2},
            },
            time = 30
        }
    }
}