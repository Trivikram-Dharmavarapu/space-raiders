import java.util.*;


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

private void update() {
    Set < Coordinates > enemiesToRemove = new HashSet < Coordinates > ();
    for (Coordinates enemy: enemies) {
        if (enemy.getX() <= widthOfWindow) {
            enemy.setX(enemy.getX() + (currentLevel * 2));
        } else {
            enemiesToRemove.add(enemy);
            screen = 4;
        }
    }
    enemies.removeAll(enemiesToRemove);
    if (enemies.size() <= currentLevel) {
        generateEnemies();
    }
    if (currentLevel == 1 && score >= 10)
        screen = 2;
    if (currentLevel == 2 && score >= 20)
        screen = 3;
}
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
private void levelOneScreen() {
    fill(255);
    textAlign(CENTER);
    textFont(createFont("Arial", 16, true), 50);
    text("Congratulations..!", 500, 250);
    textFont(createFont("Arial", 16, true), 36);
    text("Your have completed Level 1", 500, 290);
    text("Click any where to Proceed for Level 2", 500, 330);
}
private void levelTwoScreen() {
    fill(255);
    textAlign(CENTER);
    textFont(createFont("Arial", 16, true), 50);
    text("Congratulations..!", 500, 250);
    textFont(createFont("Arial", 16, true), 36);
    text("Your have completed level 2", 500, 290);
    text("Click any where to start new game", 500, 330);
}
