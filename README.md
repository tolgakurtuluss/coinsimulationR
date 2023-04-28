Coin Flip Simulation in R
--------------------

This script simulates a coin flipping game for a given number of people and rounds. The starting amount for each person is set to 0 and the number of rounds played is set to 1000.

The script then flips a coin for each person in each round and updates their amount based on the outcome of the coin flip. If the coin lands on heads, their amount increases by 0.9, and if it lands on tails, their amount decreases by 0.8.

The amounts for each person are stored in a matrix and plotted using ggplot2 and plotly. The resulting plot shows the performance of each person over time.

Requirements
------------
To run this script, you will need to have the following libraries installed in R:

- ggplot2
- RColorBrewer
- plotly

How to Use
----------
1. Clone the repository or download the script file.
2. Open the script in R.
3. Run the script.
4. The amounts for each person will be printed to the console, and a plot will be generated using plotly.

Customization
-------------
To customize the script, you can adjust the following variables:

- num_people: The number of people playing the game.
- num_rounds: The number of rounds played by each person.
- starting_amounts: The starting amount for each person.

Result
-------------
![Simulation Plot](https://github.com/tolgakurtuluss/coinsimulationR/blob/374867bf1dce1d57a20130ada8adaa4b5c8d0e91/Rplot.png)
