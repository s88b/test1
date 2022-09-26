import animals.*;

class Main{
    public static void main(String[] args) {
        Cat thomas = new Cat("Thomas ", 7, " grey");
        PrintAnimal(thomas);
        Dog bob = new Dog("Bob ", 47, " black");
        PrintAnimal(bob);
    }

    public static void PrintAnimal(Animal animal) {
        System.out.println(animal.Name+animal.Age+animal.Color);
    }
}