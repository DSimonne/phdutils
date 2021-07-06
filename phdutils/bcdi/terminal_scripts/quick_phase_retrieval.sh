#/usr/bin/bash
echo "running pynx reconstructions ..."
echo pynx-id01cdi.py pynx_run.txt
pynx-id01cdi.py pynx_run.txt > README_pynx.md
mkdir all
mv *LLK*.cxi all/
mkdir all/pynx_images
mv *Run*.png all/pynx_images
mv README_pynx.md all/
cd all/

echo "plotting slices ..."
slice_cxi.py ./ Module 2D mid

echo "Now run modes analysis or view the reconstruction before..."
echo "silx view *LLK*.cxi"
echo "pynx-cdi-analysis.py *LLK* modes=1 modes_output=modes_all.h5> README_modes_all.md"