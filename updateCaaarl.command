gzip index.html
mv index.html.gz index.html
s3cmd put --add-header=content-encoding:gzip index.html s3://caaarl.com
