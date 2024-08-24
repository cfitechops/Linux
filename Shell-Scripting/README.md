chmod +x variables.sh
./variables.sh or sh variables.sh or bash variables.sh ; which sh

cat /etc/passwd | grep root
cat /etc/shells

-----------------------------

cat ./quotes.sh

------------------------------------

./arguments.sh Hello Cfitech

-----------------------------------

useradd cfitech  ; ./variable_not_empty.sh

cat /etc/passwd | grep $USERNAME | cut -d ":" -f 1

cat /etc/passwd | grep $USERNAME 
cat /etc/passwd | grep $USERNAME | cut -d ":" -f 3

---------------------------------------------

cat /etc/passwd | grep user
userdel user1
userdel user2
userdel user3
userdel user4
userdel user5

-----------------------------------

yum list installed | grep httpd
ls -ltrh /opt

--------------------------------
yum remove httpd* -y
yum install sshpass -y
curl localhost
