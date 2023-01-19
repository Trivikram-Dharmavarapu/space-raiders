import java.util.*;

// This class is to handle cordinates/position of enemy in x and y axises
public class Coordinates {
    private int x;
    private int y;

    public Coordinates(int x, int y) {
        this.x = x;
        this.y = y;
    }
    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }
}

// On even frame this update method will be executed to update state of enemies
private void update() {
    Set < Coordinates > enemiesToRemove = new HashSet < Coordinates > ();
    for (Coordinates enemy: enemies) {
        if (enemy.getX() <= widthOfWindow) { // Moving enemy forword if its not yet reached end of window
            enemy.setX(enemy.getX() + (currentLevel * 2));
        } else {
            enemiesToRemove.add(enemy);
            screen = 4;// If it reaches we will render game over screen which is indexed as 4
        }
    }
    enemies.removeAll(enemiesToRemove);
    if (enemies.size() <= currentLevel) { // If we have less enemies than current level we generate new enemies
        generateEnemies();
    }
    if (currentLevel == 1 && score >= 10) // If score reaches 10 then we will proceed to level 2, to show message the scree 2 is rendered
        screen = 2;
    if (currentLevel == 2 && score >= 20) // If score reaches 20 then we will end game and show level 2 completed, to show message screen 3 is rendered
        screen = 3;
}
// This is game screen handler to render all UI components
private void gameScreen() {
    update();
    textFont(createFont("Arial", 16, true), 20);
    textAlign(LEFT);
    fill(255);
    rect(10, 5, 100, 40, 5);
    fill(0);
    text(String.format(SCORE_FORMAT, score), 15, 30);
    for (Coordinates enemy: enemies) {
        fill(color(0, 255, 0));
        image(enemyImage, enemy.getX(), enemy.getY(), 50, 30);
    }
    fill(color(255, 0, 0));
    rect(widthOfWindow - 40, 0, 40, heightOfWindow);
}
// Level one screen handler to show level one completed message
private void levelOneScreen() {
    fill(255); // to render tex in white
    textAlign(CENTER); // to align text to center
    textFont(createFont("Arial", 16, true), 50); // to set font 
    text("Congratulations..!", 500, 250);
    textFont(createFont("Arial", 16, true), 36);
    text("Your have completed Level 1", 500, 290);
    text("Click any where to Proceed for Level 2", 500, 330);
}
// Level 2 handler, to show level 2 completed screen with message
private void levelTwoScreen() {
    fill(255);
    textAlign(CENTER);
    textFont(createFont("Arial", 16, true), 50);
    text("Congratulations..!", 500, 250);
    textFont(createFont("Arial", 16, true), 36);
    text("Your have completed level 2", 500, 290);
    text("Click any where to start new game", 500, 330);
}
