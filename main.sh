if [ ! -f "../data.db" ]; then
    echo "../data.db 不存在。"
    if [ -n "$url_db" ] && [ -n "$url_db_shm" ] && [ -n "$url_db_wal" ]; then
        echo "正在下载数据库。"
        curl -L $url_db -o ../data.db
        if [ "$?" -ne 0 ]; then
            echo "data.db下载失败，复制默认数据库。"
            cp ./data/data.db* ../
        else
            echo "data.db下载成功。"
            curl -L $url_db_shm -o ../data.db-shm
            if [ "$?" -ne 0 ]; then
                echo "data.db-shm下载失败。"
            else
                echo "data.db-shm下载成功。"
                curl -L $url_db_wal -o ../data.db-wal
                if [ "$?" -ne 0 ]; then
                    echo "data.db-wal下载失败。"
                else
                    echo "data.db-wal下载成功。"
                fi
            fi
        fi

    else
        echo "数据库下载链接不存在，请添加3个Secrets，KEY为：url_db、url_db_shm和url_db_wal，VALUE分别对应data.db、data.db-shm和data.db-wal，三个数据库文件的下载地址。现在使用默认数据库。"
        cp ./data/data.db* ../
    fi
else
    echo "data.db 还在，不需要重新下载数据库。"
fi

chmod +x apan

./apan server --no-prefix
