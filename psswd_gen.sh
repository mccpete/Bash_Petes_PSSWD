#/bin/bash

#acsii art that makes the program look cool
cat title.txt

#welcome message
echo ""
echo "Welcome to Pete's Password generator!"
echo ""

#prompts the user  about what type of password they want to make
echo "How strong do you want your Password to be? 1 being the weakest, 2 somewhere in the middle, 3 being the strongest or 4 to create your own."
echo ""
echo "Please input 1, 2, 3 or 4"

read -p 'Strength: ' strength
echo ""

#if block that jumps to code for what type of password user wants
if [ $strength == 1 ]; then
	#generates random password that is 10 characters
	Password1=$(openssl rand -base64 10) 
	
	echo "Your password is: $Password1"
	
	echo 'Your password hash is: '
	echo ""
	#displays password hash
	echo -n "$Password1"|sha256sum
	
	echo ""
	echo "Where do you want to save your password to? Please enter the proper directory:"
	
	read -p 'Directory: ' dir
	
	#input directory where you want to save password
	echo $Password1 > $dir/password.txt

elif [ $strength == 2 ]; then
	#generates random password that is 20 characters
	Password2=$(openssl rand -base64 20) 
	
	echo "Your password is: $Password2"
	
	echo 'Your password hash is: '
	echo ""
	echo -n "$Password2"|sha256sum
	
	echo ""
	echo "Where do you want to save your password to? Please enter the proper directory:"
	
	read -p 'Directory: ' dir
	
	echo $Password2 > $dir/password.txt

elif [ $strength == 3 ]; then
	#generates random password that is 30 characters
	Password3=$(openssl rand -base64 30) 
	
	echo "Your password is: $Password3"
	
	echo 'Your password hash is: '
	echo ""
	echo -n "$Password3"|sha256sum
	
	echo ""
	echo "Where do you want to save your password to? Please enter the proper directory:"
	
	read -p 'Directory: ' dir
	
	echo $Password3 > $dir/password.txt
	
elif [ $strength == 4 ]; then
	#in this block you can create your own password
	echo "Please enter your own password below:"
	
	read -p 'Your own password: ' Password4
	
	echo 'Your password hash is: '
	echo ""
	echo -n "$Password4"|sha256sum
	
	echo ""
	echo "Where do you want to save your password to? Please enter the proper directory:"
	
	read -p 'Directory: ' dir
	
	echo $Password4 > $dir/password.txt
	
	
	
else 
	echo "Please enter 1, 2, or 3 for Password strength. Or enter 4 to create your own password."

fi





