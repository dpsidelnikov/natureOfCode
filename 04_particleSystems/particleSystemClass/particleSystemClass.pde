//Global Variables
import java.util.Iterator;
ArrayList<ParticleSystem> systems;

void setup() {
        size(640,480);
        pixelDensity(2);
        systems = new ArrayList<ParticleSystem>();
        // for (int i = 0; i < 50; i++) {
        //         particles.add(new Particle());
        // }
        systems.add(new ParticleSystem(1, new PVector(width/2, 100)));

}

void draw() {
        background(#e9e5d7);
        for (ParticleSystem ps: systems) {
                PVector gravity = new PVector(0,0.05);

                if(mousePressed) {
                        PVector wind = new PVector(0.1,0);
                        ps.applyForce(wind);

                }

                ps.applyForce(gravity);
                ps.addParticle();
                ps.run();
        }
        // systems.add(new ParticleSystem(1, new PVector(width/2, 20)));
}
