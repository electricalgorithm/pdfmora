# PDFtron
PDFtron is a tool to download PDF's and merge them autonomously. I made this script because of downloading sequent pdfs in a web server. For example, if a server has these documents:
```
http://xtzxtz.com/y/z/example2.pdf
http://xtzxtz.com/y/z/example3.pdf
http://xtzxtz.com/y/z/example4.pdf
http://xtzxtz.com/y/z/example5.pdf
```
You can use this script easily.

## PDFtron Usage
This program needs four arguments. General usage:
```
~$ ./pdftron.sh "[LINK_TO_PDF_WITH_&:]" [START_NUMBER] [END_NUMBER] [OUTPUT_FILE_NAME]
```

#### LINK_TO_PDF_WITH_&:
I will clarify this with previous example. Let's assume that we have PDF's in this link:
```
http://xtzxtz.com/y/z/example2.pdf
```
You must replace the number with "&:" chars to make script understand. So that you must write like this as [LINK_TO_PDF_WITH_&:]. Argument needs quotation marks:
```
"http://xtzxtz.com/y/z/example&:.pdf"
```
#### START_NUMBER
This argument tells the script where to start seeking. In our previous example, there was four pdfs in web server and first one is "example2.pdf". So that our argument needs to be "2".

#### END_NUMBER
This argument tells the script where to end seeking. In our previous example, there was four pdf in web server and the last one is "example5.pdf". So that our argument needs to be "5".

#### OUTPUT_FILE_NAME
This argument is for merged pdf's filename. It can be anything. Merged pdf will be in same directory as the script. If you want samewhere else, you should declare it on this argument. No need for ".pdf" suffix.

Example decleration for another location:
```
../../path/to/new/location/OUTPUT_FILE_NAME
```

## Usage for previous example:
```
~$ ./pdftron.sh "http://xtzxtz.com/y/z/example&:.pdf" 2 5 outputFile.pdf
```

## Note: SUDO access!
As you run the program without sudo access. It will need your sudo password. As you can see in the script's source code, it's because program needs "sudo apt install qpdf" command. In merging process, we use qPDF. You can either run program with sudo:
```
~$ sudo ./pdftron.sh "http://xtzxtz.com/y/z/example&:.pdf" 2 5 outputFile.pdf
~ Thank you for using this program! Have a nice day!
-- We've prepared everything for you! Working on it...
-- PDFs are downloaded. There's nothing left, please wait.
-- If we need SUDO pass, please type it to install a program we need.

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

-- We merge them. Just a little wait.
-- Done! Everythings work fine. Your PDF is ready.

```
Or you can either run program without SUDO access and type your password in program:
```
~$ ./pdftron.sh "http://xtzxtz.com/y/z/example&:.pdf" 2 5 outputFile.pdf
~ Thank you for using this program! Have a nice day!
-- We've prepared everything for you! Working on it...
-- PDFs are downloaded. There's nothing left, please wait.
-- If we need SUDO pass, please type it to install a program we need.
[sudo] password for $USER: 

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

-- We merge them. Just a little wait.
-- Done! Everythings work fine. Your PDF is ready.

```

## Contribution
All contributions have excepted to make the script more stable, powerful and easy for the end user. Thank you for all.
