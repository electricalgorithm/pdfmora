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
## Outputs for correct usage and no errors:
If you have QPDF installed:
```
~ Thank you for using this program! Have a nice day!
-- We've prepared everything for you! Working on it...
-- PDFs are downloaded. There's nothing left, please wait.
-- QPDF program has found. We'll use it to merge your pdfs.
-- Merging process has completed. Just a little wait.
-- Done! Everythings work fine. Your PDF is ready.
```
If you haven't got QPDF installed:
```
~ Thank you for using this program! Have a nice day!
-- We've prepared everything for you! Working on it...
-- PDFs are downloaded. There's nothing left, please wait.
-- We need SUDO access to install QPDF for merging pdfs.
[sudo] password for $USER: 
-- QPDF has installed. Merging process started now.
-- Merging process has completed. Just a little wait.
-- Done! Everythings work fine. Your PDF is ready.
```

## Note: SUDO access! (UPDATE: 15 March 2020)
In merging process, we need to use QPDF program. Because of this, we'll check if your system has the program. If not script will install QPDF for you to move on it's job. For this installation, script
going to need SUDO access. In case of you haven't started pdftron.sh script without sudo access, script will ask your pass. It's all safe. You can check the operation from source code.

> Note: We're not recommend you to use this script with SUDO access. If it will need it, it's going to ask you.


## Contribution
All contributions have excepted to make the script more stable, powerful and easy for the end user. Check out our projects. Thank you for all.
