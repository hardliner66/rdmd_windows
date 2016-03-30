import std.stdio, std.process, std.string;

void main(string[] args) {
    auto libString = environment.get("D_INCLUDE_PATH", "");

    auto libs = libString.split(";");

    string[] commandLine;
    commandLine ~= "rdmd";
    commandLine ~= "-d";

    foreach(string lib; libs) {
        if (lib.strip() != "")
            commandLine ~= "-I" ~ lib; 
    }
    
    commandLine ~= args[1..$];

    auto pid = spawnProcess(commandLine,
                std.stdio.stdin,
                std.stdio.stdout,
                std.stdio.stderr);
    scope(exit) wait(pid);
}