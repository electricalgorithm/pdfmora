#! /bin/bash

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
echo "-- If we need SUDO pass, please type it to install a program we need.";

# Installing and using QPDF to make merged PDF.
sudo apt install qpdf -y > /dev/null
qpdf --empty --pages *.pdf -- ../$outputName.pdf
echo "-- We merge them. Just a little wait.";

# Cleaning the env.
rm -f *
cd ..
rm -f -r tempFiles
chmod a+rw $outputName.pdf
echo "-- Done! Everythings work fine. Your PDF is ready.";
