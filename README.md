This project is designed to show how to do a non trivial layout using Autolayout. The UI is designed to have two labels, one on top of the other. Each label can have a maximum of 2 lines. There can be a maximum of 3 lines shown between them, such that the UI can be laid out either with:

* Both lables having a single line
* The top label having a single line and the bottom label having 2 lines
* The top label having 2 lines and the bottom label having a single line

If the top label has 2 lines of content the bottom label is always limited to a single line, even if its content would otherwise take up 2 lines


The included app gives 4 options for setting the lengths of labels to test things. The key points with the layout are:

1. The labels are sized to be their intrinsic size (hit cmd-equals in IB). They are then stretched to be pinned to the sides of of the superview (so it's now only the height that is intrinsic.

2. The labels are attached to one another so if the top one gets shorter, the bottom moves up

3. The bottom label has a constraint to the bottom of its superview, that must be at least 457pt. This is because if you give both labels 2 lines worth of text, you'll end up with 4 lines. You want a maximum of 3, so we prevent the label from reducing its bottom margin below the point at which there are 3 lines. We do allow it to be bigger, as if we have 1 line in each then it's ok for them both to be short.

4. Finally, Autolayout likes to use the existing dimensions of a view if a layout has multiple solutions. If we just limit it to 3 lines but give both labels 2 lines each, then it can either give the top label enough height to show 2 and the bottom enough to show 1 or vice versa. The way it chooses is if the top one only had 1 line and the bottom 2 to begin with, then it would retain that. 

What I have done is to put a height constraint of 21pt on the bottom label (the height needed to show a single line at its intrinsic height) and set its priority to 650. This means that it is stronger than the weak intrinsic content size priority. This means that given a choice between its intrinsic content size and this height, it will pick this height. As the top label doesn't have this, it will always try for its intrinsic height. Hope that makes sense as it took me a while to rationalise it into words (it's one of those "I know it works, but can't explain why" problems).