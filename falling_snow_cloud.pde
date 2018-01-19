int s = 2500;
float[] x = new float[s], y = new float[s], r = new float[s];
int ticker=0;
boolean stop;
void setup() {
  size(500,500);
  for (int i=0; i<s; i++) r[i] = random(1,6);
}
void draw() {
 background(14,156,182);
 fill(209,201,201);
 bezier(-119,-18,100,100,100,81,211,0);
 bezier(66,-49,270,102,310,81,431,0);
 bezier(371,-49,270,155,884,23,692,0);
 fill(255);
 noStroke();
 if (!stop) {
   for (int i = ticker%s; i<(ticker%s)+10; i++) {
     x[i]=random(900)-200;
     y[i]=0;
   }
   ticker+=10;
 }
 for (int i=0; i< min(ticker,s); i++) {
   x[i] += random(0.5);
   y[i] += random(r[i]);
   ellipse(x[i], y[i], r[i], r[i]);
 }
 fill(231,226,226);
 bezier(-164,-8,191,166,263,-222,335,0);
 bezier(34,-40,191,194,263,-85,335,0);
 bezier(77,-37,449,179,466,-85,987,0);
}

void mouseClicked() {
  stop = !stop;
}