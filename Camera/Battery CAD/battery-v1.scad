battery_height=5.9;
battery_width=35.4;
battery_length=40.3;

contact_width=2.5;
contact_height=5;

positive_pos=22;
diag_pos=26;
negative_pos=30;

wire_width=1.5;
wire_depth=1.5;

corner_square_side=3;

difference()
{
	// Main Shape
	cube([battery_length,battery_width,battery_height]);

   // Corner Key
   translate([0,0,battery_height])
   {
      cube([4,4,4], center=true);
   }

	// Corner Key
   translate([0,battery_width,battery_height])
   {
      cube([4,4,4], center=true);
   }

   // Battery Contact 1
	translate([0,positive_pos,battery_height/2])
   {
      cube([1,contact_width,contact_height], center=true);
   }

   // Battery Contact 1 Connection
	translate([0,positive_pos,battery_height])
   {
      cube([10,contact_width,1], center=true);
   }

   // Battery Contact 1 Wire
	translate([10,positive_pos,battery_height])
   {
      cube([15,wire_width,wire_depth*2], center=true);
   }
	// Wire corner square
	translate([(10+15/2),positive_pos-(wire_width/2),battery_height])
   {
      cube([corner_square_side,corner_square_side,wire_depth*2], center=true);
   }
	// Wire middle piece
	translate([(10+15/2)+wire_width/2,(positive_pos/2)+8,battery_height])
   {
      cube([wire_width,7,wire_depth*2], center=true);
   }
	// Wire corner square
	translate([(10+15/2)+(corner_square_side/2),positive_pos-(wire_width/2)-6,battery_height])
   {
      cube([corner_square_side,corner_square_side,wire_depth*2], center=true);
   }
   // Battery Contact 1 Wire
	translate([30,14.5,battery_height])
   {
      cube([24,wire_width,wire_depth*2], center=true);
   }

	// Battery Contact Diagnostic
	translate([0,diag_pos,battery_height/2])
   {
      cube([1,contact_width,contact_height], center=true);
   }

   // Battery Contact 2
	translate([0,negative_pos,battery_height/2])
   {
      cube([1,contact_width,contact_height], center=true);
   }

   // Battery Contact 1 Connection
	translate([0,negative_pos,battery_height])
   {
      cube([10,contact_width,1], center=true);
   }
	// Battery Contact 1 Wire
	translate([15,negative_pos,battery_height])
   {
      cube([25,wire_width,wire_depth*2], center=true);
   }
	// Wire corner square
	translate([(20+15/2),negative_pos-(wire_width/2),battery_height])
   {
      cube([corner_square_side,corner_square_side,wire_depth*2], center=true);
   }
	// Wire middle piece
	translate([(20+15/2)+wire_width/2,(negative_pos/2)+8,battery_height])
   {
      cube([wire_width,12,wire_depth*2], center=true);
   }
	// Wire corner square
	translate([(20+15/2)+(corner_square_side/2),negative_pos-(wire_width/2)-11,battery_height])
   {
      cube([corner_square_side,corner_square_side,wire_depth*2], center=true);
   }
   // Battery Contact 1 Wire
	translate([35,17,battery_height])
   {
      cube([15,6.5,(wire_depth+2.5)*2], center=true);
   }
}