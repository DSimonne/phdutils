#/usr/bin/bash
echo "Moving scan to new directory..."
echo movetodir.py $1 $2 $3
movetodir.py $1 $2 $3

echo "Rotating scan..."
echo rotate.py $2 $3
rotate.py $2 $3

echo "Correcting angles ..."
echo correct_angles_detector.py $2 $3
correct_angles_detector.py $2 $3

echo "Preprocessing scan..."
echo preprocess_bcdi_merlin_ortho.py $2 $3
echo "Or you can try:"
echo preprocess_bcdi_merlin_ortho.py $2 $3 "reload=True"

preprocess_bcdi_merlin_ortho.py $2 $3

echo "Ready to launch phase retrieval !"
echo cd $2S$3/pynxraw
echo quick_phase_retrieval.sh