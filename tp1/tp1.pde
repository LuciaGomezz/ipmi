PImage phineas;
void setup(){
  size (800,400);
  phineas=
  loadImage ("phineas.jpg");
  background(0);
  image(phineas,0,0,400,400);
  
 
  //cuerpo//
  strokeWeight(3);
  stroke(50);
  fill(255,214,137);
  triangle(636,214,601,312,690,312);
  
  triangle(636,216,599,243,624,250);
  
  triangle(644,215,642,253,675,250);
  
   strokeWeight(1);
  stroke(50);
   fill(255,214,137);
  rect(620,213,29,11);
    
  
//cejas//
noStroke();
fill(227,60,60);
triangle(537, 60, 541, 53, 555, 52);
fill(227,60,60);
triangle(618, 46, 645, 44, 649, 49);

//ojos//
fill(255);
  ellipse (563, 90, 70, 45);
  fill(52,13,214);
  ellipse(570, 88, 20, 14);
   fill(255);
  ellipse (568,86,6,4);
   fill(255,232, 188);
   ellipse (692,145,40,25);
   
   
   //pelo//
   fill(227,60,60);//mechon1//
triangle(679, 39, 728, 50, 733, 79);

   fill(227,60,60);//mechon2//
triangle(681, 12, 743, 22, 750, 76);

     fill(227,60,60);//mechon3//
triangle(762, 23, 743, 54, 771, 70);
  
  fill(227,60,60);//mechon4//
triangle(787, 97, 767, 71, 761, 84);
  
   fill(227,60,60);//mechon5//
triangle(759, 106, 747, 86, 763, 83);
 
 fill(227,60,60);//mechon6//
triangle(731, 110, 752, 88, 734, 77);
 
 fill(227,60,60);
   ellipse (748,70,45,45);
   
   
   //cabeza//
   fill(255,232, 188);
  triangle(412, 106, 740, 72, 635, 213);
  
  
  
  //boca//
 
  fill(240,56,56);
  ellipse(593,150,55,55);
 
  
  
  fill(255,124,124);
  ellipse(607,167,20,12);
   triangle(610,175,597,175,617,163);
   
   
  fill(0);
   ellipse(557,172,67,42);
   
   fill(255);
   triangle(590,185,587,177,606,174);
   
   
   fill(255);
  triangle(622,127,575,132,620,148);
  
  
 
   fill(255);
   rect(543,137,57,20);
  
  
   fill(255);
  rect(562,127,58,29);
 
 fill(255);
 triangle(560,165,546,156,578,157);
 
 
 
fill(255,232, 188);
 triangle(543,155,622,127,538,112);
 ellipse(560,130,70,40);
  ellipse(590,130,38,21);
   ellipse(582,135,32,16);
   ellipse(545,145,40,17);
  ellipse(605,128,25,10);
   ellipse(536,157,25,10);
  
  
  fill(0);
 triangle(544, 156, 518,164, 560, 166);
  
  
  fill(240,56,56);
  triangle(620,156,558,166,622,139);
  
   fill(0);
  triangle(560, 166, 585,162, 583, 157);
  
  
  fill(0);
   triangle(591, 185, 578,185, 590, 180);
   
  //ojod//
  fill(255,172, 103);
   ellipse (719,83,7,7);
   
   fill(255,172, 103);
   ellipse (700,84,7,7);
   
   fill(255,172, 103);
   ellipse (712,96,7,7);

 fill(255);
  ellipse(619, 89, 80, 50);
  fill(52,13,214);
  ellipse(630, 90, 22, 21);
  
  fill(255);
  ellipse (627,86,7,8);
  
  fill(255,154,52);
  ellipse(634,212,30,10);
  
 
  
  //franja que pasa por atras del brazo//
  fill(255,132,49);
  rect(616,270,52,15);
  rect(606,305,77,19);
  
  
 
  //brazoa//
   fill(255,232, 188);
  rect(653,250,8,47);
  triangle(624,248,608,245,607,300);
  
  
   //short//
  fill(26,20,222);
rect(604,312,80,35);
fill(0);
rect(560,344,80,70);
fill(4,0,155);
  rect(639,328,3,19);
  ellipse(631,328,17,2);
  
  
  //franja frente short//
  fill(255,132,49);
  rect(603,300,85,18);
  
  
  
  //palmas//
   fill(255,232, 188);
  ellipse(606,291,8,25);
  ellipse(662,298,18,21);
  
  
  //bolsillo//
  fill(4,0,180);
  rect(652,319,32,20);
   fill(4,0,150);
  triangle(654,318,684,318,670,327);
 
  
  //piernas//
   fill(255,232, 188);
    rect(615,344,9,25);
    rect(658,347,9,25);
      
    //zapatillas//
    fill(8,16,206);
     rect(614,369,10,14);
     rect(657,369,10,14);
    ellipse(596,382,55,14);
    ellipse(639,382,55,14);
    fill(255);
    rect(590,375,14,6);
     rect(633,375,14,6);
     triangle(570,383,582,387,581,376);
    triangle(612,383,628,387,626,376);
    fill(255);
rect(580,384,32,4);
    rect(628,384,32,4);
  
  //dedos//
   fill(255,232, 188);
  rect(668,290,17,5);
  rect(667,296,17,5);
  rect(661,303,17,5);
 
  //franjas//
  fill(255,132,49);
  rect(628,243,13,9);
  rect(612,237,13,7);
  rect(645,238,19,7);
   
}
