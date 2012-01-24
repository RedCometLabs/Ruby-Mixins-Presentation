!SLIDE
# Mixins to the rescue

!SLIDE 
#What is a mixin?

!SLIDE 
#What is a mixin?

## Group of cohesive methods that are
## 'mixed-in' with another class.

!SLIDE bullets incremental

# Inheritance
## is-a relationship
* A mutant is a human
* Typically a subclass

!SLIDE bullets incremental
# Mixins
## has a or uses a
* Spiderman has a "spider-sense"

!SLIDE bullets incremental
# How do we do this?
* Ruby Modules

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
   

        
