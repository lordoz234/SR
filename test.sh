#!/bin/bash

# Path to Images
ImagePath="/Users/vladislavdevlikamov/Desktop/done/SR/image/"
# Path to object boxes
ObjectsPath="/Users/vladislavdevlikamov/Desktop/done/SR/objects/faster_bboxes_categories_t3/"
# Path to test list
TestList="/Users/vladislavdevlikamov/Desktop/done/SR/list/PISC_fine_level_test.txt"
# Path to adjacency matrix
AdjMatrix="/Users/vladislavdevlikamov/Desktop/done/SR/adjacencyMatrix/PISC_fine_level_matrix.npy"
# Number of classes
num=6
# Path to save scores
ResultPath="/Users/vladislavdevlikamov/Desktop/done/SR/result/"
# Path to model
ModelPath="/Users/vladislavdevlikamov/Desktop/done/SR/models/"
echo $ModelPath

python3 test.py --adjacency-matrix $AdjMatrix $ModelPath $ObjectsPath $TestList

