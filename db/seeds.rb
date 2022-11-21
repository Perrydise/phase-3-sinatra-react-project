Car.destroy_all
Dealership.destroy_all

d1 = Dealership.create(name: "Harrys Honda")
d2 = Dealership.create(name: "Franks Ford")
d3 = Dealership.create(name: "Timmys Toyota")
d4 = Dealership.create(name: "Charlies Chevy")

Car.create(make: "Honda", model: "Civic", year: "1997", color: "Black", price: "5000", dealership: d1, dealership_name: d1.name)
Car.create(make: "Ford", model: "F-150", year: "2011", color: "Grey", price: "45000", dealership: d2, dealership_name: d2.name)
Car.create(make: "Toyota", model: "Supra", year: "2000", color: "Red", price: "80000", dealership: d3, dealership_name: d3.name)
Car.create(make: "Chevy", model: "amero", year: "2015", color: "Yellow", price: "50000", dealership: d4, dealership_name: d4.name)