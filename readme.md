This repo illustrates two attempts at relocating pkg inside a macos product archive.

The method defined in distribution.xml with two mutually exclusive choices works, but results in an archive with duplicate content.  We can workaround this duplicate content by repacking the archive to remove the duplicate files.

The method defined in relocate.xml does not work.  I've tried many things to have the relocate search honored, the search runs, but does nothing.