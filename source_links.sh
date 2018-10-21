# .vimrc

file=".vimrc"
destination="${HOME}/${file}"

if [ ! \( -e "${destination}" \) ]
then
     ln -s ${PWD}/${file} ${destination}
else
     echo "file ${destination} already exists."
fi
