# CoffeeMaker

## Write a CoffeeMaker class with a `water_level` and a coffee `cartridge`.

* The `CoffeeMaker` class should have the following:
    - instance vars: `water_level`, `cartridge` (use `attr_reader` for these)
    - methods: `add_water(amount)`, `add_cartridge(flavor)`, `brew`
    - a `to_s` method that prints the water level and the cartridge flavor

* Note that the `brew` method should check for sufficient water and that
  a cartridge is loaded. Calling `brew` should result in one of the following
  messages to be printed:

```
Cannot brew, please add water.
Cannot brew, please add cartridge.
Started brewing your Dark Roast!
```

* The water level is a range from 0 to 100 (percent)
* The water level must be at least 25 to brew a cup of coffee
* Each brew should discard the cartridge and lower the water level by 25
* Test your code by:
    - creating a CoffeeMaker
    - try to brew (no water or coffee)
    - add water
    - try to brew (no coffee)
    - add cartridge("Dark Roast")
    - try to brew (should be successful this time)
