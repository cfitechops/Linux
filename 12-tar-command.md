touch file1 file2 file3
tar -cf archive.tar file1 file2 file3
#tar -cf archive.tar file*
ls -ltrh
tar -tf archive.tar
du -sh /etc/
tar -cf etc.tar /etc/
ls -ltrh
tar -czvf etc.tar.gz /etc/
du -sh /etc/
ls -ltrh
tar -cjvf etc.tar.bz2 /etc/
tar -xvf etc.tar
ls -ltrh
tar -xvf etc.tar.gz
du -sh /etc/
du -sh etc
rm -rf etc
tar -xvf etc.tar.bz2
tar -xvf etc.tar.bz2 -c /opt/
du -sh /opt/etc
rm -rf /opt/etc
