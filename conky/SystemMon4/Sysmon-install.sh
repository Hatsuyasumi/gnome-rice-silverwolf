#!/bin/sh

echo "hello"
echo "welcom to installing SystemMon 0.1..."

if [ ! -d ~/.conky ];then
        echo "There is no .conky directory in home..."
        echo "making directory .conky..."
        mkdir .conky 
fi      
echo "directory <<~/.conky>> Found..."
    
if [ -d SystemMon ];then
        echo "SystemMon directory Found..."
        echo "copying Files..."
        sleep 2
        mkdir ~/.conky/SystemMon 
        cp -r SystemMon ~/.conky/SystemMon

        if [ -d fonts ];then
                echo "font directory Found..."
                if [ ! -d ~/.fonts ];then
                    mkdir ~/.fonts
                fi    
                echo "installing fonts..."
                ls fonts | xargs -IX cp fonts/X ~/.fonts
            else
                echo "font directory notFound..."
                echo "visit https://github.com/Morbidlogic and download it..."
                exit
        fi
        echo "all files copied successfully..."
        echo "would you open conky manager? [y or n]"
        read answer
        if [ "$answer" == "y" ] ;then 
        conky-manager2
        fi
        exit
    else
        echo "SystemMon directory NotFound..."
        echo "visit https://github.com/Morbidlogic/SystemMon and download it..."
        exit    
fi        
