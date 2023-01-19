import java.util.*;

private int MAX_NUMBER_ENEMIES_PER_MINUTE = 5;
private Set < Coordinates > enemies = new HashSet < Coordinates > ();
private int numberOfEnemies;
private int currentLevel = 1;
public int widthOfWindow, heightOfWindow;
private int score = 0;
private String SCORE_FORMAT = "Score : %s";
private int screen = 1;
PImage enemyImage;

void setup() {
    frameRate(30);
    widthOfWindow = 1000;
    heightOfWindow = 500;
    size(1000, 500); // Size of Game window
    enemyImage = loadImage("enemy.jpg"); // Loading the enemy image
}

void draw() {
    background(0); // Setting background color to black
    if (screen == 1) // selecting screens based on indexs 1,2,3,4 respectively.
        gameScreen();
    else if (screen == 2)
        levelOneScreen();
    else if (screen == 3)
        levelTwoScreen();
    else
        gameOverScreen();

}
// Mouse event handler, based on screen either to element enemy or to procees to next screen
void mousePressed() {
    if (screen == 1 && mouseButton == LEFT) {
        eliminateEnemies(mouseX, mouseY);
    } else {
        if (screen == 4 || screen == 3) {
            score = 0;
            currentLevel = 1;
        }
        if (screen == 2) {
            currentLevel = 2;
        }
        screen = 1;
        enemies.clear();
    }
}
