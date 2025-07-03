#!/bin/bash
#defining the file that shouls be analyse , this is reading the file name from the run command , so you have to put the command ./main.sh test2.v or ./main.sh test1.v, here test1.v is definining.
if [ -z "$1" ]; then
  echo "No Verilog file specified. Using default: test2.v" # If no file is specified due to error, use a default file 'test2.v , u can use this for manual run of file you can put file name here'
  verilog_file="test2.v"
else
  verilog_file="$1"
  echo "Verilog file set to: $verilog_file" #specified file by run
fi
echo "Verilog file set to: $verilog_file"
if ! find . -maxdepth 1 -name "$verilog_file" -print -quit | grep -q .; then # Check if the specified file exists using the 'find' command
    echo "File not found!" # If the file is not found, print an error message and exit the script
    exit 1
fi
# Use perl function to filter out comment lines and count each keyword like task,function,module,endmodule.
task_count=$(perl -ne 'print if !m/^[[:space:]]*\/\// && m/\btask\b/' "$verilog_file" | wc -l) 
function_count=$(perl -ne 'print if !m/^[[:space:]]*\/\// && m/\bfunction\b/' "$verilog_file" | wc -l)
module_count=$(perl -ne 'print if !m/^[[:space:]]*\/\// && m/\bmodule\b/' "$verilog_file" | wc -l)
endmodule_count=$(perl -ne 'print if !m/^[[:space:]]*\/\// && m/\bendmodule\b/' "$verilog_file" | wc -l)
# printing the results with echo command
echo -e "Keyword counts in $verilog_file:\n\
Number of 'task' statement is $task_count\n\
Number of 'function' statement is $function_count\n\
Number of 'module' statement is $module_count\n\
Number of 'endmodule' statement is $endmodule_count"


#NOTE: for running the file , you should use the below commands.
#chmod +x main.sh
#for testcase verilog file 1        ./main.sh test1.v
#for testcase verilog file 2        ./main.sh test2.v
