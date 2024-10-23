# space-raiders

# Space Raiders

**Space Raiders** is a space-themed game developed using Processing. The game consists of multiple levels, where the player must eliminate enemies by clicking on them. The game tracks the player's score and progresses through levels as the score increases.

## Features

- **Multiple Levels**: The game has two levels. The player progresses to the next level upon reaching a score milestone.
- **Enemies**: Enemies appear on the screen and move towards the player. The player must click on them to eliminate them.
- **Scoring System**: The player's score is displayed on the screen, and reaching a certain score advances the player to the next level.
- **Background Music**: The game features background music that loops at intervals.

## Game Mechanics

- **Level 1**: The player starts in level 1. Upon reaching a score of 10, the player progresses to level 2.
- **Level 2**: In this level, the difficulty increases, and the player must score 20 points to complete the game.
- **Game Over**: If an enemy reaches the edge of the screen without being eliminated, the game ends.

## Controls

- **Click**: To eliminate enemies, the player clicks on them.
- **Mouse**: The game progresses to the next screen or level when the player clicks anywhere on the screen after completing a level or the game over screen.

## How to Play

1. **Start the Game**: The game starts automatically when you run the program.
2. **Eliminate Enemies**: Click on the enemies to eliminate them and earn points.
3. **Advance to the Next Level**: Once you reach a score of 10 in level 1, you will move on to level 2.
4. **Game Over**: If an enemy reaches the edge of the screen, the game will end, and you will see the "Game Over" screen.

## Setup

To run the game, follow these steps:

1. **Install Processing**: Ensure that you have Processing installed on your machine. You can download it from [Processing.org](https://processing.org/download/).
2. **Add Sound and Image Files**:
    - The game uses an enemy image (`enemy.jpg`) and a background music file (`music.mp3`). Make sure these files are available in the same directory as the game.
3. **Run the Game**: Open `space_raiders.pde` in Processing and press the "Run" button.

## Code Structure

- **player1.pde**:
  - Contains the `Coordinates` class, which handles the position of enemies on the screen.
  - The file also includes methods to update enemy positions, handle the game state, and manage the player’s score and levels.

- **space_raiders.pde**:
  - Contains the main game logic and setup.
  - Handles the window size, enemy image loading, background music, and the game loop.
  - Manages different game screens (gameplay, level transitions, and game over).

## Future Enhancements

- **Increase Difficulty**: Add more levels with increasing difficulty, faster enemies, or more complex movement patterns.
- **Power-Ups**: Introduce power-ups that give the player special abilities.
- **Improved Graphics**: Update the game with more detailed sprites and animations.


To add sound library
https://stackoverflow.com/questions/37016945/processing-soundfile-not-found
