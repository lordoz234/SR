#!/bin/bash

# Path to Images
ImagePath="/Users/vladislavdevlikamov/Desktop/it_lav/SR/models/image"
# Path to object boxes
ObjectsPath="/Users/vladislavdevlikamov/Desktop/it_lav/SR/objects/faster_bboxes_categories_t3/"
# Path to test list
TestList="/Users/vladislavdevlikamov/Desktop/it_lav/SR/list/PISC_fine_level_test.txt"
# Path to adjacency matrix
AdjMatrix="/Users/vladislavdevlikamov/Desktop/it_lav/SR/adjacencyMatrix/PISC_fine_level_matrix.npy"
# Number of classes
num=6
# Path to save scores
ResultPath="/Users/vladislavdevlikamov/Desktop/it_lav/SR/result/"
# Path to model
ModelPath="/Users/vladislavdevlikamov/Desktop/it_lav/SR/models/PISC_fine_level1.pth.tar"
echo $ModelPath

python test.py $ImagePath $ObjectsPath $TestList --weight $ModelPath --adjacency-matrix $AdjMatrix -n $num -b 1 --print-freq 100 --result-path $ResultPath

