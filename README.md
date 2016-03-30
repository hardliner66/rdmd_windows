# rdmd_windows
A small wrapper to make .d files executeable on windows.

Copy the two files in your dmd bin directory (where dmd.exe and rdmd.exe is located)

Right click on a .d file and klick "Open with". Now select rdmd_win.bat

Now all D Scripts are executable from the commandline.

To add imports, add an environment variable named D_INCLUDE_PATH. This should be a semicolon seperated list of paths.
