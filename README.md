# Kudomon GO!  

### My approach

I decided to build a Ruby command line to run in IRB.

#### The Kudomon Module

When creating classes, I decided to use a Kudomon module for 3 reasons:
1.
Part 4 would have included differing health and combat points for each Kudomon
type.
2. All Kudomon would share the same methods (e.g. `fight`).
3. It would keep my code and testing DRY.

#### Trainer and Kudomon positioning

Both were given positive x and y coordinates, like those on a graph, to work
with simplicity in the beginning. A trainer was given a fixed location as I felt
being able to move position was not an integral part of the MVP and could be
added later. To give the game some interest, Kudomon initialize with random
locations.

#### Finding and catching Kudomon

Again, for simplicity, as the trainer is fixed at [0,0],
 'nearby' Kudomon meant those less than 10 "spaces" in the
x or y directions (the coordinates are added together). To give a trainer
choice when catching Kudomon, finding nearby Kudomon returns an array of catchable
Kudomon. One of these can be selected for capture by entering the position of
the Kudomon within the array.

### Testing
The RSpec testing framework was used with mocks and stubs to remove dependencies
between objects. For the majority of the exercise I practised TDD.

### Completed features

- Part 1 - Trainer and Kudomon were given classes and types
- Part 2 - Trainer can catch nearby Kudomon and add them to their collection

### Unfinished features

- Multiplayer - only one player can capture a certain Kudomon at one time
- Kudomon battles - Allowing Kudomon to battle each other until one is knocked out
, returning a winner
- Ranking Kudomon - Certain types Kudomon fight far more effectively against
other types

### Struggles

- Avoiding the Law of Demeter, as the Game class reaches directly into both the
Trainer and Kudomon classes
- Generating Kudomon species with different types. As it uses a 'one size fits
all' module, I needed to use a method to generate the types later to try
 to solve this issue. Having one Kudomon class by specifying types on
 initialization could have been a better solution - e.g. `Kudomon.new(..., type
 , species)`
- Mocking and stubbing randomness for Kudomon positioning

### About the Game

#### What are Kudomon?

Kudomon are virtual creatures that can be caught and collected by a trainer.

There are 6 different types and species of Kudomon:

| Species | Type |
|---|---|
|Sourbulb|Grass|
|Mancharred|Fire|
|Chikapu|Electric|
|Squirkle|Water|
|Geoflude|Rock|
|Mewclue|Psychic|

#### How can a Trainer interact with them?

Through this command-line app, a Trainer can catch and collect Kudomon. A Trainer has their coordinates set at `[0,0]`.

Every Kudomon has a randomly generated position. The game allows a trainer to find Kudomon nearby - i.e. less than 10 yards North and East from their position - and add them to their collection.

#### How do I play?

1) Open the command line and clone this repo:  
`$ git clone git@github.com:BenRoss92/kudomon.git`

2) Change into the `kudomon` directory and open IRB with the Game file loaded:  
 `$ irb -r './lib/game.rb'`

3) Create a new Game and generate the Kudomon types:
```
$ game = Game.new
$ game.generate_types
```
4) Find Kudomon near to the trainer's location:  
`$ game.find_kudomon`

5) Choose a Kudomon from the returned array by specifying its position (i.e. 1st Kudomon in array = `1`, 2nd = `2`, etc.) to catch it:  
`$ game.catch_kudomon(1)`

6) View the trainer's caught Kudomon at any time:  
`$ game.trainer.collection`
