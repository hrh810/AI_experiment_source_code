max=5
for i in `seq 1 $max`
do
    echo "$i"
    for j in `seq 1 $max`
    do
        echo "$j"
        KERAS_BACKEND=tensorflow python age_estimation_train.py --input ../data/imdb_db.npz --db imdb --netType1 $i --netType2 $j
        KERAS_BACKEND=tensorflow python age_estimation_train.py --input ../data/wiki_db.npz --db wiki --netType1 $i --netType2 $j --batch_size 50
    done
done