# .bashrc : hero24 : 2016-07-11
# It is better to keep your mouth shut and appear stupid than to open it and remove all doubt ~ Mark Twain
umask 033
umask u=rwx
CDPATH=.:$HOME
function color (){
# defines color of the output
last_command=$?
dname="${PWD##*/}"
if [[ $last_command != 0  ]]; then
  echo -e "\e[0;1;31m \n '$last_command'"
elif [[ $dname = $USER ]]; then # $?!=0 <- return code not 0
  echo -e "\e[0;3;36m \n"
  #echo -e "\e[0;0m \\033[38;5;178m \n"
elif [[ $dname = "public_html" ]]; then
  echo -e "\e[0;2;35m \n"
elif [[ $dname = "Desktop" ]]; then
  echo -e "\e[0;94m \n"
else
  echo -e "\e[0;1;32m \n"
fi
}
function input_color (){
# defines color of the input
  dname="${PWD##*/}"
  if [[ $dname = $USER  ]]; then
    echo -e "\e[0;1;3;96m"
  elif [[ $dname = "public_html" ]]; then
    echo -e "\e[0;1;2;95m"
  elif [[ $dname = "Desktop" ]]; then
    echo -e "\e[0;3;95m \n"
  else
    echo -e "\e[0;1;93m"
  fi
}
PS1='\[$(color)\] \t Mess with the best, Die like the rest \n\w $ \[$(input_color)\] '
PS2='> '
# list all
alias la='ls -a'

