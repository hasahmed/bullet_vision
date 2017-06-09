///buttonNext_script(array, currentIndex)
/* This function returns the next index taht
you should use. this function is used to cycle through 
the index's of an array
so that if you add one it wraps around back to 0 rather than
overflowing the arrays index. This is used in the cursor object
to cycle through 'regions' which are placed on buttons so that
the cursor goes over the button as needed, and cycles back to the
first button when its gone over all regions. */
arr = argument0;
index = argument1;
arrLen = array_length_1d(arr);
/* if the index is less than the lengh of the array -1,
then return the next greater possible index */
if(index < arrLen -1)
    return index + 1;
/* if the index is greater than equal to the length of the array,
then wrap back to 0 */
else if(index >= arrLen -1)
    return 0; //this is the wrapping step
