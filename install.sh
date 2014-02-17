#!/usr/bin/env bash

# Default the folder name to "Hackathon Starter".
folderName="Hackathon Starter"

# Determine the install directory.
templateInstallDirectory=~/Library/Developer/Xcode/Templates/Project\ Templates/"$folderName"
fileTemplateInstallDirectory=~/Library/Developer/Xcode/Templates/File\ Templates/"$folderName"
codeSnippetsInstallDirectory=~/Library/Developer/Xcode/UserData/CodeSnippets

echo "Templates will be installed to $templateInstallDirectory"

# Delete the install directory if it already exists to prevent deleted files from lingering.
if [ -d "$templateInstallDirectory" ]
then
	rm -r "$templateInstallDirectory"
fi

# Delete the install directory if it already exists to prevent deleted files from lingering.
if [ -d "$fileTemplateInstallDirectory" ]
then
	rm -r "$fileTemplateInstallDirectory"
fi

# Create the install directory.
mkdir -p "$templateInstallDirectory"

# Copy all of the xctemplate folders into the install directory.
cp -r *.xctemplate "$templateInstallDirectory"

# Copy all of the file templates into the install directory.
rsync -aE Files\ Template/*.xctemplate "$fileTemplateInstallDirectory"


# Copy all of the code snippets into the install directory.
cp -r *.codesnippet "$codeSnippetsInstallDirectory"
