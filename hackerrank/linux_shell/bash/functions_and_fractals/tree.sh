#!/bin/bash

n_col=100
n_lin=63

side=0
floor=1
height=16
branch=48

#creates matrix that holds the tree
for (( i=0; i<n_lin; i++ )) do
    for (( j=0; j<n_col; j++ )) do
        tree[$(( $i*$n_col + $j ))]=0
    done
done

tree[49]=1 #mark root

#number of iterations required
read itr

#create tree
for (( i=0; i<itr; i++ )) do
    #mark trunk
    for (( j=floor; j<floor+height-1; j++ )) do
       for (( k=0; k<n_col; k++ )) do
            if [[ ${tree[$(( $(( $j-1 ))*$n_col + $k ))]} -eq 1 ]]; then
                tree[$(( $j*$n_col + $k ))]=1
            fi
       done 
    done
    
    floor=$(( $floor + $height -1 ))
    # printf "\n\n\n%d\n\n\n"$floor

    #mark first branches
    for (( k=0; k<n_col; k++ )) do
        if [[ ${tree[$(( $(( $floor-1 ))*$n_col + $k ))]} -eq 1 ]]; then
            tree[$(( $floor*$n_col + $k-1 ))]=1
            tree[$(( $floor*$n_col + $k+1 ))]=1
        fi
    done

    #mark branch
    for (( j=floor+1; j<floor+height; j++ )) do
        for (( k=0; k<n_col; k++ )) do
            if [[ ${tree[$(( $j-1 ))*$n_col + $k]} -eq 1 ]]; then
                if [[ $side -eq 0 ]]; then #left
                    tree[$(( $j*$n_col + $k-1 ))]=1
                    side=1
                else #right
                    tree[$(( $j*$n_col + $k+1 ))]=1
                    side=0
                fi
            fi
        done
    done

    floor=$(( $floor + $height + 1 ))
    height=$(( $height/2 ))
    
    #mark new trunks if necessary
    if [[ $(( $i + 1 )) -lt $itr ]]; then
        for (( k=0; k<n_col; k++ )) do
            if [[ ${tree[$(( $(( $floor-2 ))*$n_col + $k ))]} -eq 1 ]]; then
                tree[$(( $(( $floor-1 ))*$n_col + $k ))]=1
            fi
        done
    fi 
done

#Prints tree
for (( i=n_lin-1; i>=0; i-- )) do
    for (( j=0; j<n_col; j++ )) do
        if [[ ${tree[$(( $i*$n_col + $j ))]} -eq 1 ]]; then
            printf "%d" ${tree[$(( $i*$n_col + $j ))]}
        else
            printf "_"
        fi
    done
    if [[ $i -eq $(( 0 )) ]]; then
        break
    fi
    printf "\n"
done