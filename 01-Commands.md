# Command

Creating and Navigating Directory:

```sh
mkdir CFITECH
cd CFITECH
```

Listing and Displaying Directory Information:

```sh
ls
pwd
ls ltr
```

Creating Files and Directories

```sh
touch abc.txt
mkdir -pv user1/user2/user3 # -pv: plusieurs verbaux
touch user1/user2/user3/user3.txt
```

Removing a File

```sh
rm -f user1/user2/user3/user3.txt
```

Working with File Content

```sh
echo "Hello CFITECH"
echo "Hello CFITECH" > cfitech.txt
cat cfitech.txt
echo "Welcome to you !" >> cfitech.txt
```

Renaming and Moving Files:

```sh
touch abc.txt
mv abc.txt pqr.txt
mkdir linux
mv pqr.txt linux
```

Copying Files and Navigating Directories

```sh
ls trth linux
touch mycopy.txt
cp mycopy.txt linux
cd user1/user2/user3/user4
cd ..
cd ../..
cd /
```
