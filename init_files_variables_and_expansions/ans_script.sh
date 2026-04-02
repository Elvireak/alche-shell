#!/bin/bash

read -p "Enter the file name : " file_name
read -p "Enter the command answer : " cmd

echo -e "#!/bin/bash" > ${file_name}
echo -e "${cmd}" >> ${file_name}

chmod u+x ${file_name}

git add .

git commit -m "Added file ${file_name} to the repo"

git push

