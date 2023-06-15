// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Structs {
    struct Car {
        string model;   // The model of the car (empty string by default)
        uint year;      // The year of the car (0 by default)
        address owner;  // The owner of the car (0x0000... by default)
    }

    Car public car;     // Single instance of the Car struct
    Car[] public cars;  // Array of Car structs

    function operations() external {
        // Creating and initializing a new Car struct instance (Bugatti Chiron)
        Car memory bugatti;
        bugatti.model = "Veyron";  // Updated model name
        bugatti.year = 2018;
        bugatti.owner = msg.sender;

        // Creating and initializing a new Car struct instance (BMW x1)
        Car memory bmw;
        bmw.model = "x1";
        bmw.year = 2010;
        bmw.owner = msg.sender;

        // Creating and initializing a new Car struct instance (Tesla Model S)
        Car memory tesla = Car("Model S", 2021, msg.sender);

        // Adding the Car struct instances to the cars array
        cars.push(bugatti);
        cars.push(bmw);
        cars.push(Car("Model X", 2022, msg.sender));

        // Modifying the year of the first car in the array (Bugatti Chiron)
        Car storage _car = cars[0];
        _car.year = 2019;

        // Resetting the owner of the first car in the array (Bugatti Chiron) to the default value
        delete _car.owner;

        // Resetting the second car in the array (BMW x1) to the default values for all attributes
        delete cars[1];
    }
}
