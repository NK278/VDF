#defining the file that shouls be analyse , this is reading the file name from the run command , so you have to put the command tclsh pankaj1.tcl test2.v or tclsh pankaj1.tcl test1.v, here test1.v is definining.
set filename [lindex $argv 0]
#trying to open the file for reading and If there's an error in opening the file,This will print an error message and exit
if {[catch {set fileId [open $filename r]} errMsg]} {
    puts "Error: Unable to open file $filename. $errMsg"
    exit 1
}  
#array that stores each verilog keyword and initialise them to 0.
array set counts {always 0 initial 0 begin 0 end 0} 
#while statement that reads every line one after another.
while {[gets $fileId line] >= 0} {   
    # delete leading and trailing spaces from the line
    set trimmed_line [string trim $line] 
    #checking for commented line
    if {[string match "//*" $trimmed_line]} { 
        continue
    }
    #spilliting lines into words seperated by spaces
    set words [split $trimmed_line] 
    #this loop is for reading each word and increasing count if match found
    foreach word $words {  
        if {[info exists counts($word)]} {
            incr counts($word)
        }
    }
}

try {
    #file operations like closing file if our goal is achieved
} finally {
    close $fileId
}
#setting the array of keywords that should be counted
set keywords {always initial begin end} 
#loop that prints keywords one by one after counting its quantity
foreach keyword $keywords { 
    puts "Number of '$keyword' statement is $counts($keyword)"
}

#NOTE: for running the file , you should use the below commands.
#for testcase verilog file 1        :tclsh main.tcl test1.v
#for testcase verilog file 2        :tclsh main.tcl test2.v
