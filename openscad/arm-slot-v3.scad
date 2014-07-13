$fn=100;

w=36;
h=20;
adapterw=32;
adapterh=16;
thickness=3.0;
slotdepth=2.0;

sloty1=(h-adapterh)/2;
slotx1=(w-adapterw)/2;

sloty2=sloty1+adapterh;
slotx2=slotx1+adapterw;

servoarmouter();

module servoarmouter () {

 difference () {

   linear_extrude( height=thickness)
   color ( "blue") 
   polygon( [ [0,0],[w,0],[w,h],[0,h] ] , [   [0,1,2,3] ]);
  
   color("red")
   translate([0,0,thickness-slotdepth]) 
   linear_extrude(height=slotdepth)	
   polygon( [ [0,sloty1],[slotx2,sloty1],[slotx2,sloty2],[0,sloty2] ] , [   [0,1,2,3] ]);

	color ("red")
	translate([w/2,h/2,0])
	linear_extrude(height=1.2)
	circle(d=5.2);

  }

}


