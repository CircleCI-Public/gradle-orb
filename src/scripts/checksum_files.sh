CHECKSUM_STRING="${PARAM_CHECKSUM_FILES}"

#check for an array
if [[ "${PARAM_CHECKSUM_FILES}" == *","* ]]; then
    CHECKSUM_STRING=""

    #use IFS to create array delimited by commas
    IFS=", " read -a CHECKSUM_ARRAY -r <<< "${PARAM_CHECKSUM_FILES}"

    length=${#CHECKSUM_ARRAY[@]}

    #Iterate through the array to add `-or -name "${CHECKSUM_ARRAY[index]}"` for all indexes > 0
    for (( i=0; i<length; i++ ))
        do
            currentString="${CHECKSUM_ARRAY[i]//,/}"
            if [[ $i == 0 ]]; then
            CHECKSUM_STRING=$currentString
            fi
            if [[ $i != 0 ]]; then
            CHECKSUM_STRING=$CHECKSUM_STRING" -or -name "$currentString
            fi
        done
fi

find . -name "${CHECKSUM_STRING}" | sort | xargs cat | shasum | awk '{print $1}' > "${CHECKSUM_SEED_LOCATION}"