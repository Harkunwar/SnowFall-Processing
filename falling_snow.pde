int s = 2500;
float[] x = new float[s], y = new float[s], r = new float[s];
int ticker=0;
void setup() {
  size(500,500);
  for (int i=0; i<s; i++) r[i] = random(6);
}
void draw() {
 background(14,156,182);
 fill(255);
 noStroke();
 for (int i = ticker%s; i<(ticker%s)+10; i++) {
   x[i]=random(2500)-1000;
   y[i]=0;
 }
 for (int i=0; i< Math.min(ticker,s); i++) {
   x[i] = x[i] + (mouseX-250)/25;
   y[i] = y[i]+random(r[i]*1);
   ellipse(x[i], y[i], r[i], r[i]);
 }
 ticker+=10;
}