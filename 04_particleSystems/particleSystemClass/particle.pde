
class Particle {
PVector location;
PVector velocity;
PVector acceleration;
float lifespan;

Particle(PVector l) {
        acceleration = new PVector(0, 0.05);
        velocity = new PVector(random(-1, 1), random(-1, 0));
        location = l.get();
        lifespan = 255.0;
}
void applyForce(PVector force) {
        acceleration.add(force);
}
void run() {
        update();
        display();
}

// Method to update location
void update() {
        velocity.add(acceleration);
        location.add(velocity);
        acceleration.mult(0);
        lifespan -= 2.0;
}

// Method to display
void display(){
        noStroke();
        fill(#fa4931, lifespan);
        ellipse(location.x, location.y, 12, 12);
}

// Is the particle still useful?
boolean isDead() {
        if (lifespan < 0.0) {
                return true;
        }
        else {
                return false;
        }
}
}
