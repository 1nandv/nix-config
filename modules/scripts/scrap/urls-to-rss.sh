#!/bin/sh
# CREDIT: https://github.com/shawwn/scrap/blob/master/urls-to-rss

set -ex

title="${1:-My RSS Feed}"
shift 1
url="${1:-http://example.com}"
shift 1
description="${1:-An RSS feed I scraped together, ha ha}"
shift 1

set +x

cat <<EOF
<rss version="2.0" xmlns:content="http://purl.org/rss/1.0/modules/content/" xmlns:dc="http://purl.org/dc/elements/1.1/"><channel>
  <title>$title</title>
  <link>$url</link>
  <description>$description</description>
EOF

rg -o '^(http[s]://[^/]+/)(.+)$' --replace '  <item>
    <link>$1$2</link>
    <title>$2</title>
  </item>' --color=never

cat <<'EOF'
</channel></rss>
EOF

