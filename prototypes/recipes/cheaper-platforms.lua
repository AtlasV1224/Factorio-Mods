-- Space Platform
data.raw.recipe["space-platform-foundation"].ingredients =
{
	{ type = "item", name = "steel-plate",  amount = 1 },
	{ type = "item", name = "copper-cable", amount = 1 },
}
data.raw.recipe["space-platform-foundation"].energy_required = 2

-- Foundation
data.raw.recipe["foundation"].ingredients = {
	{ type = "item",  name = "stone",             amount = 5, },
	{ type = "item",  name = "tungsten-plate",    amount = 1, },
	{ type = "item",  name = "carbon-fiber",      amount = 1, },
	{ type = "item",  name = "lithium-plate",     amount = 1, },
	{ type = "fluid", name = "fluoroketone-cold", amount = 5, },
}
data.raw.recipe["foundation"].energy_required = 5

-- Ice Platform
data.raw.recipe["ice-platform"].ingredients = {
	{ type = "item",  name = "ice",     amount = 10, },
	{ type = "fluid", name = "ammonia", amount = 40, },
}
data.raw.recipe["ice-platform"].energy_required = 5
data.raw.recipe["ice-platform"].results = {
	{ type = "item", name = "ice-platform", amount = 2 }
}
