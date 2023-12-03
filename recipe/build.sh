if [[ ${HOST} =~ .*darwin.* ]]; then
    rm -rf /usr/local/opt/libomp || echo "trying to remove /usr/local/opt/libomp failed"
    rm -rf /opt/homebrew/opt/libomp || echo "trying to remove /opt/homebrew/opt/libomp failed"
fi

export CMAKE_ARGS="${CMAKE_ARGS} -D BUILD_DOC:BOOL=OFF -D VERSION_STRING:STRING=${PKG_VERSION}"

${PYTHON} -m pip install . -vv