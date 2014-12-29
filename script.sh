#! /bin/bash
DATA_DIR=${PWD}
OUT_DIR=$DATA_DIR/Output
#check if ANTSPATH is set
: ${ANTSPATH:?"Need to set ANTSPATH non-empty"}
#assusming that ANTSPATH is already set and in the $PATH
# LesionFilling imageDimension T1_image.nii.gz lesion_mask.nii.gz output_lesion_filled.nii.gz
LesionFilling 2 \
        ${DATA_DIR}/t1_2d.nii.gz \
        ${DATA_DIR}/lesion_2d.nii.gz \
        ${OUT_DIR}/t1_lesion_filled.nii.gz
