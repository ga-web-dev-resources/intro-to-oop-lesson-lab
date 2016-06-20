---
title: Traffic Light
type: lab
duration: "0:30"
creator:
    name: Mike Hopper
    city: Atlanta
---
# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Traffic Light

#### Requirements

Write a class that defines the basic state and behavior of a traffic light. The class should have the following:

* a private instance variable called `name` that describes the location of the traffic light (such as `"North and Peachtree"`).
* a private instance variable called `color` that is set to either `"red"`, `"green"`, or `"yellow"`
* an `initialize` function that takes a single argument `name` and sets the `name` instance variable from the argument and also sets the initial `color` to `"red"`
* the ability to get the value of `name` via a getter method (you may use the `attr_reader` shortcut)
* the ability to get the value of `color` via a getter method (you may use the `attr_reader` shortcut)
* the methods `go_red`, `go_green`, and `go_yellow` methods that set to color appropriately
* the method `go_next` that advances the light to the next color, i.e. from `"green"` to `"yellow"`, from `"yellow"` to `"red"`, or from `"red"` to `"green"`.
* the `to_s` method that returns a string describing the traffic light, such as `"North and Peachtree is red"`

Edit the file `traffic_light.rb` to implement your solution and test it with `hwk-tester -r`.
