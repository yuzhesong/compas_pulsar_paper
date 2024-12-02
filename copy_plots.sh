#!/usr/bin/bash


models=(INIT  D1  D2  D3  D4  D5  B1  B2  P1  P2  P3  PN1  PN2  PN3
        BLN1  BLN2  BLN3  BLN4  P2D1  P2D2  P2D3  P2D4  P2D5  PN1B1
        PLN1 
        PN1B1D1  PN1B1D2  PN1B1D3  PN1B1D4  PN1B1D5
        PN5B1D1  PN5B1D2  PN5B1D3  PN5B1D4  PN5B1D5
        BLN1PN1  BLN4PN1  BLN1PN5)

for dir in "${models[@]}"; do
    mkdir "$dir" 
    cd "$dir"
    for i in {0..9}; do
        mkdir realisation${i}
        #rm realisation${i}/*
        cp /fred/oz101/ysong/new_compas_results_revision/${dir}/ran${i}/joined_results/*.png realisation${i}
    done 
    cp /fred/oz101/ysong/new_compas_results_revision/all_CDF${dir}.png realisation${i}
    cd ~/git_repos/compas_pulsar_paper/
done