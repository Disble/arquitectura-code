echo "echo hola mundo" > archivo_shred.sh
ls -l | grep archivo_shred
cat archivo_shred.sh
echo "shred -vfz"
shred -vfz archivo_shred.sh
ls -l | grep archivo_shred
cat archivo_shred.sh
