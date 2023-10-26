import processing.pdf.*;
PImage img;
int a, b;
float xPre;
float xNow;

//int i,
int t=0;
float[] x=new float[800];
Curve[] curves;
COLOR[] clor;

boolean savePDF;

void setup() {
  size(600, 800);
  background(245);
  img=loadImage("0.png");
  img.resize(width, height);
  curves = new Curve[800];
  clor=new COLOR[800];

  for (int i=0; i<curves.length; i++) {
    PVector fP = new PVector(i, 0);
    curves[i] = new Curve(fP);
  }
  for (a=0; a<width; a++) {
    for (b=0; b<height; b++) {
      PVector ab = new PVector(a, b);
      for (int m=0; m<800; m++) {
        clor[m]=new COLOR(ab);
      }
    }
  }
}

void draw() {
  background(255);

  for (int i=1; i<curves.length; i++) {
    float xPre = curves[i].cvt.get(curves[i].cvt.size()-1).x;
    float xNow = xPre += noise(i*.05, t*.01)-0.48;
    PVector cv = new PVector(xNow, t);
    curves[i].cvt.add(cv);
    
  }

  t++;
  
  println(t);

  if (savePDF) {
    beginRecord(PDF, "curves.pdf");
  }

  for (Curve s : curves) {
    s.drawCurve();
  }

  if (savePDF) {
    endRecord();
    savePDF = false;
  }
}



void keyPressed() {
  if (key == 'p') savePDF=true;
}
