var hor= keyboard_check(ord("D")) - keyboard_check(ord("A"));
var ver= keyboard_check(ord("S")) - keyboard_check(ord("W"));


if (hor !=0 || ver !=0){
	x+=hor;
	y+=ver;
	
}
