# File Permission and Ownership Commands

Creating and Modifying Files

```sh
r=read ; w=write ; x=execute ; o=others ; g=group ; a=all

r=4 ; w=2 ; x=1 ; a=7
```

Create and Change Permissions on example.txt

```sh
touch example.txt

chmod o+wx example.txt
chmod g+wx example.txt
chmod u+x example.txt
```

Create and Modify Permissions on myfile.txt

```sh
touch myfile.txt

chmod a+rwx myfile.txt
chmod o-wx myfile.txt
chmod g-wx myfile.txt
chmod g-x myfile.txt
chmod u-wx myfile.txt
```

Creating a Directory and Modifying Permissions

```sh
mkdir secure ; cd secure ; touch file1.txt

chmod 777 file1.txt
chmod og-rwx file1.txt
chmod u=rwx,g=r,o=x file1.txt
```

Creating and Modifying Permissions for Multiple Files in laptop Directory

```sh
mkdir laptop
cd laptop
touch lap{1..5}.txt
cd ..
ls -ltr laptop
chmod -R 777 laptop
chmod 776 laptop
chmod 746 laptop
chmod 146 laptop
chmod 000 laptop
```
