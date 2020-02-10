win1 = "Template.tif";
win2 = "Stack";

selectWindow(win1);
getDimensions(width1, height1, channels1, slices1, frames1);
selectWindow(win2);
getDimensions(width2, height2, channels2, slices2, frames2);

newImage("Untitled", "RGB black", width1, height1, slices2);
win3 = getTitle();

for (i=0;i<slices2;i++) {
	// Copying template
	selectWindow(win1);
	run("Select All");
	run("Copy");
	
	selectWindow(win3);
	Stack.setSlice(i+1);
	run("Select All");
	run("Paste");

	// Copying current plot
	selectWindow(win2);
	Stack.setSlice(i+1);
	makeRectangle(1, 1, 482, 364);
	run("Copy");

	selectWindow(win3);
	makeRectangle(17, 102, 482, 364);
	run("Paste");
	
}

run("Select None");
