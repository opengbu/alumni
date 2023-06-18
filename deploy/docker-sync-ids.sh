#!/bin/bash

for user in ${host_users//,/ }; do
    echo "syncing user $user" 
    uid=$(grep "^$user:" /etc/passwd.src | awk -F: '{print $3}')
    if [ ! -z "$uid" ]; then
        RET=1
        while [[ RET -ne 0 ]]; do
            usermod -u $uid $user
            RET=$?
            if [[ RET -eq 4 ]]; then
                existing_user=$(id $uid -u)
                existing_user_new_id=$(shuf -i 101-498 -n 1)
                usermod -u $existing_user_new_id $existing_user
                sleep 1
            elif [[ RET -ne 0 ]]; then
                sleep 5
            fi
        done
    else
        echo "syncing user $user, not found in host" 
    fi
done

for group in ${host_groups//,/ }; do
    echo "syncing group $group" 
    gid=$(grep "^$group:" /etc/group.src | awk -F: '{print $3}')
    if [ ! -z "$gid" ]; then
        RET=1
        while [[ RET -ne 0 ]]; do
            groupmod -g $gid $group
            RET=$?
            if [[ RET -eq 4 ]]; then
                existing_group=$(getent group $gid | awk -F: '{print $1}')
                existing_group_new_id=$(shuf -i 1-32766 -n 1)
                groupmod -g $existing_group_new_id $existing_group
                sleep 1
            elif [[ RET -ne 0 ]]; then
                sleep 5
            fi
        done
    else
        echo "syncing group $group, not found in host" 
    fi
done
