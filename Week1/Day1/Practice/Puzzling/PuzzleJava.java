import java.util.ArrayList;
import java.util.Random;

public class PuzzleJava {
    public ArrayList<Integer> getTenRolls() {
        ArrayList<Integer> randomRolls = new ArrayList<Integer>();
        Random randMachine = new Random();

        for(int i =0; i<10; i++) {
            randomRolls.add(randMachine.nextInt(20) + 1 );
        }
        return randomRolls;
    }
    public char getRandomLetter() {
        Char [] alphabet = [26];
        
    }
}