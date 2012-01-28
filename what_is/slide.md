!SLIDE center
# Mixins to the rescue
![superman_rescue](superman_rescue2.jpg)

!SLIDE center
#What is a mixin?
![Norm_Lightyear](Norm_Lightyear.jpg)

!SLIDE 
## A mixin is a
## group of cohesive methods that are
## *mixed-in* with another class.

!SLIDE 
## A way of sharing common functionality without creating a sub-class

!SLIDE bullets incremental
# Inheritance
## is-a relationship
* A mutant **is a** human
* A mutant is a **subclass** of a human

!SLIDE bullets incremental
# Mixins
## has a or uses a
* Spiderman has a "spider-sense"
* Seperation of concerns

!SLIDE center
# How do we do this?
![ironman](iron_man.jpg)
#### http://kael360.deviantart.com/art/Ironman-100314344?q=boost%3Apopular%20ironman&qo=23

!SLIDE bullets incremental

#Ruby Modules
* Modules provide namespacing
* Support mixins

!SLIDE
# Mixin Module

    @@@ Ruby
      module Flyable

        def fly_now
          puts "I believe I can fly"
        end
      
      end

!SLIDE
# Mixin Module

    @@@ Ruby
      class Person
        include Flyable

      end

      average_joe = Person.new
      average_joe.fly_now 
      # => 'I believe I can fly'
   

        
