#!/bin/bash
./rcesv.exp docbox.flint.com:1980 the end banana | grep succeeded
#debug > /dev/null
rc=$?; echo $rc; if [[ $rc != 0 ]]; then echo "error"; exit $rc; fi

