# TAR

```sh
-c > to create tar ball
-f > to create tar ball of file/directory
-v > to show the progress of tarball
-z > to create gz file
-j > to create bz2 tar file
-x > to extract/uncompress tar ball

# Types of Files

1. .tar >
2. .tar.gz >
3. .tar.bz2 >
```

Create Files

```sh
touch file1 file2 file3
```

Create a Tar Archive

```sh
tar -cf archive.tar file1 file2 file3
```

List Files in Directory

```sh
ls -ltrh
```

List Contents of Tar Archive

```sh
tar -tf archive.tar
```

Check Directory Size

```sh
du -sh /etc/
```

Create Tar Archive of a Directory

```sh
tar -cf etc.tar /etc/
```

List Files After Creating Tar Archive

```sh
ls -ltrh
```

Create a Gzipped Tar Archive

```sh
tar -czvf etc.tar.gz /etc/
```

Check Directory Size After Compression

```sh
du -sh /etc/
```

Create a Bzipped Tar Archive

```sh
tar -cjvf etc.tar.bz2 /etc/

ls -ltrh
```

Extract Tar Archive

```sh
tar -xvf etc.tar

du -sh /etc/

rm -rf etc
```

Extract Bzipped Tar Archive

```sh
tar -xvf etc.tar.bz2
```

Extract Bzipped Tar Archive to Specific Directory

```sh
tar -xvf etc.tar.bz2 -C /opt/
```

Check Size of Extracted Directory in New Location

```sh
du -sh /opt/etc

rm -rf /opt/etc
```
