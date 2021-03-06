//Global Variables
float amplitude = 50;
float angle = 0.0;
void setup() {
        size(640,480);
        pixelDensity(2);
}

void draw() {
        background(255);
        translate(width/2,height/2);

        float x = amplitude * sin(angle);
        fill(125);
        stroke(0);
        line(0,0,x,0);
        ellipse(x,0,36,36);
        angle += 0.2;
}
