# Kudomon GO!  

### What are Kudomon?

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

### How can a Trainer interact with them?

Through this command-line app, a Trainer can catch and collect Kudomon. A Trainer has their coordinates set at `[0,0]`.

Every Kudomon has a randomly generated position. The game allows a trainer to find Kudomon nearby - i.e. less than 10 yards North and East from their position - and add them to their collection.

### How do I play?

1) Open the command line and clone this repo:  
`$ git clone git@github.com:BenRoss92/kudomon.git`

2) Open IRB with the Game loaded:  
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
