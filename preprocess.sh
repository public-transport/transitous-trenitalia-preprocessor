#!/bin/bash
#
# SPDX-FileCopyrightText: 2026 Volker Krause <vkrause@kde.org>
# SPDX-License-Identifier: CC0-1.0

mkdir -p out
mkdir -p work

# there no etag or cache-control support here :(
curl https://www.cciss.it/nap/mmtis/public/api/v1/download/blob/Asset/1080596/resource > work/trenitalia.xml.gz

# repack as ZIP
gunzip work/trenitalia.xml.gz
cd work
zip ../out/trenitalia-netex.zip *.xml
