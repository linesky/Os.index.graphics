mkdir -p CD_root/isolinux
mkdir -p CD_root/images
mkdir -p CD_root/kernel
cp isolinux.bin CD_root/isolinux/isolinux.bin
cp isolinux.cfg CD_root/isolinux/isolinux.cfg
cp *.bss CD_root/isolinux/
cp *.sys CD_root/isolinux/
cp *.c32 CD_root/isolinux/
cp *.com CD_root/isolinux/
cp *.elf CD_root/isolinux/
cp *.jpg CD_root/isolinux/
cp *.menu CD_root/isolinux/
cp *.txt CD_root/isolinux/
fasm hello.asm hello.com
fasm help.asm help.com
fasm dir.asm dir.com
fasm exit.asm exit.com
fasm cls.asm cls.com
fasm sleep.asm sleep.com
fasm time.asm time.com
fasm date.asm date.com
fasm clock.asm clock.com
fasm shutdown.asm shutdown.com
cp *.com CD_root/isolinux/
ls *.com CD_root/isolinux/ > list.txt
sed -i 's/$/\r/g'  list.txt 
cp list.txt CD_root/isolinux/list.txt
genisoimage -o myos.iso -input-charset utf-8 -b isolinux/isolinux.bin -no-emul-boot -boot-load-size 4  -boot-info-table ./CD_root 

