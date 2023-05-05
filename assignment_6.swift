protocol Flyable {
    func fly()
}

protocol Swimmable {
    func swim()
}

protocol Hunter {
    func hunt()
}

protocol Voiceable {
    func voice()
}

class Bird {
    func fly() {
        print("I am a bird and I can/can't fly")
    }
    
}

class Eagle: Bird, Flyable, Hunter {
    override func fly() {
        print("I am an eagle and I can fly")
    }

    func hunt() {
        print("I am an eagle and I am a hunter")
    }
}

class Duck: Bird, Flyable, Swimmable, Voiceable {
    override func fly() {
        print("I am a duck and I can fly")
    }

    func swim() {
        print("I am a duck and I can swim")
    }

    func voice() {
        print("I am a duck and I can make sounds")
    }
}

let duck = Duck()

duck.fly()
duck.swim()
duck.voice()

let bird = Bird()

bird.fly()
