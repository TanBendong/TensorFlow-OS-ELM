#!/bin/sh

epochs=10
activation="sigmoid"
loss="mean_squared_error"
out="result.txt"

## fashion mnist
for units in 512 1024 2048
do
    for batch_size in 1 2 4 8
    do
        command="python train.py --dataset fashion --epochs ${epochs} --units ${units} --batch_size ${batch_size} --activation ${activation} --loss ${loss} >> ${out}"
        eval $command
    done
done

## mnist
for units in 512 1024 2048
do
    for batch_size in 1 2 4 8
    do
        command="python train.py --dataset mnist --epochs ${epochs} --units ${units} --batch_size ${batch_size} --activation ${activation} --loss ${loss} >> ${out}"
        eval $command
    done
done

## digits
for units in 64 128 256
do
    for batch_size in 1 2 4 8
    do
        command="python train.py --dataset digits --epochs ${epochs} --units ${units} --batch_size ${batch_size} --activation ${activation} --loss ${loss} >> ${out}"
        eval $command
    done
done

## boston
for units in 8 16 32
do
    for batch_size in 1 2 4 8
    do
        command="python train.py --dataset boston --epochs ${epochs} --units ${units} --batch_size ${batch_size} --activation ${activation} --loss ${loss} >> ${out}"
        eval $command
    done
done
