#!/bin/sh

# Copyright 2020 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ARCH=$(uname -m)

if [ "${ARCH}" = "s390x" ]; then
    echo "http://dl-cdn.alpinelinux.org/alpine/v3.8/main" > /etc/apk/repositories
    echo "http://dl-cdn.alpinelinux.org/alpine/v3.8/community" >> /etc/apk/repositories
fi

apk add --no-cache openssl nginx-mod-http-lua nginx-mod-http-lua-upstream nginx

exit 0
