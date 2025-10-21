Check documentation of Tiff_reader library and .vis.

This code was adapted from code available on LAVA.ORG.

"From file" VIs will read/write directly from disk.  This is useful for very large files where it is not desired to have the entire file in memory. (These VIs also have a little disk in the icon.)


Known issues :

Metadata functions may not work when metadata is only a few bytes (because functions assume that tags are pointing to a location in the data file, but if data can be contained in that pointer (i.e. the metadata is a Word or less), then the tag has the data itself).

File sizes are limited to ~2Gb since we can only index an array using an I32.  There may not be any warning or error message if this limit is passed.

Code has not been exercised too extensively.  Users are encouraged to check for bugs.