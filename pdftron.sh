#! /bin/bash
## For information: github.com/electricalgorithm/PDFtron
## Version number: 1.2.5

echo "~ Thank you for using this program! Have a nice day!";

URL=$1
startedNumber=$2
endedNumber=$3
outputName=$4

# For prepearing the env.
rm -r -f tempFiles;
mkdir tempFiles;
cd tempFiles;

echo "-- We've prepared everything for you! Working on it...";

# Downloading the pdf's.
for index in $(eval echo "{$startedNumber..$endedNumber}");
do
	newURL=$(echo $URL | sed "s/&:/$index/") &&
	wget -q $newURL;
done
echo "-- PDFs are downloaded. There's nothing left, please wait.";

# Checking if QPDF is installed. If it is, merge the pdfs.
# If it's not, download, install and then merge the pdfs.
dpkg -s qpdf &> /dev/null
if [ $? -eq  0 ]; then
	echo "-- QPDF program has found. We'll use it to merge your pdfs."
	qpdf --empty --pages *.pdf -- ../$outputName.pdf
	echo "-- Merging process has completed. Just a little wait."
else
	echo "-- We need SUDO access to install QPDF for merging pdfs."
	sudo apt-get install qpdf -y > /dev/null
	if [ $? -eq 0 ]; then
		echo "-- QPDF has installed. Merging process started now."
		qpdf --empty --pages *.pdf -- ../$outputName.pdf
		echo "-- Merging process has completed. Just a little wait."
	else
		echo "ERROR: Something happened during the QPDF installation."
		echo Error code is: $?
	fi
fi

# Cleaning the env.
rm -f *
cd ..
rm -f -r tempFiles
chmod a+rw $outputName.pdf
echo "-- Done! Everythings work fine. Your PDF is ready.";
