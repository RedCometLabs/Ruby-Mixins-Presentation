var Flyable = function () {
 
  this.fly_now = function () {
    console.log("I believe I can fly");
  } 
  
}

var Person = function () {};

Flyable.call(Person.prototype);

var average_joe = new Person();
average_joe.fly_now();
