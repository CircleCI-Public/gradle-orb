find . -name "${PARAM_CHECKSUM_FILES}" | sort | xargs cat | shasum | awk '{print $1}' > "${CHECKSUM_SEED_LOCATION}"
