public void setup()
{
	size (500, 500);
}

public void draw()
{
	background(0,100,(int)(Math.random()*200),200);
	myFractal(250,250,300);
}

public void myFractal (int x, int y, int siz)
{
	noStroke();
	fill((int)(Math.random()*100),(int)(Math.random()*256),150,250);
	//triangle(x-siz/2, y+siz/2, x+siz/2, y+siz/2, x, y-siz/2);
	ellipse(x, y, siz,siz/2);
	if (siz>50)
	{
		pushMatrix();
		translate(x-siz/2,y);
		rotate(-PI/2);
		//myFractal(x-siz/2,y,siz/2);
		myFractal(0, 0,siz/2);
		popMatrix();

		pushMatrix();
		translate(x+siz/2,y);
		rotate(PI/2);
		myFractal(0,0,siz/2);
		//myFractal(x+siz/2, y,siz/2);
		popMatrix();
	}
	
	 if (siz>10)
	 {
	 	pushMatrix();
	 	translate(x-siz/2,y);
	 	rotate(-PI/6);
	 	//myFractal(x-siz/2,y,siz/2);
	 	myFractal(0, 0,siz/2);
	 	popMatrix();

	 	pushMatrix();
	 	translate(x+siz/2,y);
	 	rotate(PI/6);
	 	myFractal(0,0,siz/2);
	 	//myFractal(x+siz/2, y,siz/2);
	 	popMatrix();
	 }
}


