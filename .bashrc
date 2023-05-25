wav()
{
    mkdir -p tmp
    for i in {1..60}; do
    for j in {0..60..10}; do
        printf -v min "%02d" $i
        printf -v sec "%02d" $j

        ffmpeg -i xxx.mp4 \
        -vn -ss 00:$min:$sec -t 13 ./tmp/output_$min:$sec:13.wav
        echo sleeping
        sleep 1
        python3 test.py ./tmp/output_$min:$sec:13.wav >> output
    done
    done
}

test()
{

    for i in {1..60}; do
    for j in {0..60..10}; do
        printf -v min "%02d" $i
        printf -v sec "%02d" $j

        echo "$min $sec"
    done
    done

}