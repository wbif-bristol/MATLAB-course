init_zm = 20;

getDimensions(width, height, channels, slices, frames);
init_width = width;
w_in = width*init_zm;
run("Scale...", "x="+init_zm+" y="+init_zm+" width="+w_in+" height="+w_in+" interpolation=None create");

mainWin = getTitle();

for (i=0;i<80;i++) {
	w_out = width*1.05;
	zm = w_out/w_in;
	print(w_out);
	
	run("Scale...", "x="+zm+" y="+zm+" width="+w_out+" height="+w_out+" interpolation=None create");
	
	st = (w_out-init_width)/2;
	makeRectangle(st, st, init_width, init_width);
	run("Crop");
	run("Select None");
	selectWindow(mainWin);
	width = w_out;
	
}