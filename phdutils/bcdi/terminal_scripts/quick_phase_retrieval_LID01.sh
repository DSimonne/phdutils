#usr/bin/bash
cwd=$(pwd)
ssh simonne@lid01gpu1 << EOF

	/users/simonne/phdutils/phdutils/bcdi/terminal_scripts/pynx_LID01.sh $cwd $1 $2

    echo "Phase retrieval is running ..."
    
	exit

EOF

echo "Will also run strain analysis"
echo strain_ID01.py $1 $2

echo "If you have the conjugated object run:"
echo strain_ID01.py $1 $2 flip=True
