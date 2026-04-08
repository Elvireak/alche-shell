#!/bin/bash

read -p "Enter the file name : " file_name
read -p "Type what your script is going to do, rmbr to START with \"\#\": " comment
echo -e "Enter the command answer \(Press Ctrl+D when done\): "
cmd=""
while IFS= read -r line; do
	cmd="${cmd}${line}"$'\n'
done

echo -e "#!/usr/bin/env bash" > ${file_name}
echo -e ${comment} >> ${file_name}
printf "%s" "${cmd}" >> ${file_name}

chmod u+x ${file_name}

git add .

git commit -m "Added file ${file_name} to the repo"

git push

