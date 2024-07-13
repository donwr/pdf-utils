# PDF Tools Script
This script provides utility functions for compressing and concatenating PDF files using Ghostscript. It includes checks for file permissions to ensure that the script can read the input files and write to the output directories.

## Installation
1. Download the Script:
- Save the pdf_tools.sh script to a directory of your choice.

2. Make the Script Executable:

```chmod +x /path/to/pdf_tools.sh```

3. Add Alias to .bashrc:

Add the following line to your .bashrc file:

```alias pdf_tools='/path/to/pdf_tools.sh'```

Replace /path/to/pdf_tools.sh with the actual path to the script.

4. Reload .bashrc:

Apply the changes by reloading your .bashrc file:

```source ~/.bashrc```

## Usage
### Compress a PDF
To compress a PDF, use the compress command followed by the input file and the desired output file.

```pdf_tools compress <input_file> <output_file>```

Example:
```pdf_tools compress ~/Documents/bin/resume-updates/BASE.pdf ~/Documents/bin/compressed.pdf```        

## Concatenate PDFs
To concatenate multiple PDF files, use the concat command followed by the output file and the input files.

```pdf_tools concat <output_file> <input_files...>```

Example:

```pdf_tools concat ~/Documents/bin/combined.pdf ~/Documents/bin/file1.pdf ~/Documents/bin/file2.pdf```

## Permission Checks
The script includes checks to ensure it has the necessary read and write permissions:

Read Permission: The script verifies it can read the input files.
Write Permission: The script verifies it can write to the directory of the output file.
If permissions are insufficient, the script will print an error message and exit.

## Error Handling
The script includes basic error handling for incorrect usage and permission issues. If the required arguments are not provided or if the script lacks the necessary permissions, it will display an appropriate error message.