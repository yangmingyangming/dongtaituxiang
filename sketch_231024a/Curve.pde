class Curve {
  ArrayList<PVector> cvt;//curve

  Curve(PVector cv) {//构造函数
    cvt = new ArrayList<PVector>();

    cvt.add(cv);
  }

  //class COLOR {
  //  ArrayList<PVector> cl;

  //  COLOR(PVector ab) {//构造函数
  //    cl = new ArrayList<PVector>();
  //    cl.add(ab);
  //  }
  //}


  void drawCurve() {
    //  for (int i=1; i<curves.length; i++) {
    //    xPre = curves[i].cvt.get(curves[i].cvt.size()-1).x;
    //    xNow = xPre + noise(i*.05, t*.01)-0.48;
    //    PVector cv = new PVector(xNow, t);
    //    curves[i].cvt.add(cv);
    //  }
    //  t++;
    //PVector ab=new PVector(a,b);
    //for (a=0; a<width; a++) {
    //  for (b=0; b<height; b++) {
    //    color c=img.get(a, b);
    //    for (int i=1; i<curves.length; i++) {
    //      for (int m=0; m<800; m++) {
    //        if ( clor[m].cl==curves[i].cvt) {
    //          stroke(c, 25);
    //          strokeWeight(1);
    //        }
    //      }
    //    }
    //  }
    //}
    //beginShape();
    //for (int n = 0; n<cvt.size(); n++) {
    //  vertex(cvt.get(n).x, cvt.get(n).y); //curveVertex();
    //}
    //endShape();
    //}

    //beginShape();
    for (int n = 0; n<cvt.size()-1; n++) {
      color cc = img.get(floor(cvt.get(n).x), floor(cvt.get(n).y));
      //vertex(cvt.get(n).x, cvt.get(n).y); //curveVertex();
      stroke(cc,45);
      line(cvt.get(n).x, cvt.get(n).y, cvt.get(n+1).x, cvt.get(n+1).y);
    }
    //endShape();
  }
}
