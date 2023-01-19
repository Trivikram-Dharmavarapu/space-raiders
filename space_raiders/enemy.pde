private void generateEnemies() {
    numberOfEnemies = (new Random().nextInt(MAX_NUMBER_ENEMIES_PER_MINUTE) + 1);
    int enemyCount = 0;
    while (enemyCount < numberOfEnemies) {
        int x = (int)((Math.random() * (widthOfWindow / 4)));
        int y = (int)((Math.random() * ((heightOfWindow - 20) - 60)) + 60);
        enemies.add(new Coordinates(x, y));
        enemyCount++;
    }
}
private void eliminateEnemies(int x, int y) {
    System.out.println("Elimination process started for (x,y) = " + x + " " + y);
    Set < Coordinates > enemiesToRemove = new HashSet < Coordinates > ();
    for (Coordinates enemy: enemies) {
    if (x >= enemy.getX() && x <= enemy.getX() + 40 && y >= enemy.getY() && y <= enemy.getY() + 40) {
        score++;
        enemiesToRemove.add(enemy);
    }
}
enemies.removeAll(enemiesToRemove);
}
private void gameOverScreen() {
    fill(255);
    textAlign(CENTER);
    textFont(createFont("Arial", 16, true), 50);
    text("Game Over..!", 500, 250);
    textFont(createFont("Arial", 16, true), 36);
    text("Your score : " + score, 500, 290);
    text("Click any where to start new game", 500, 330);
}
