publish:
	tar -zcvf discovery.tar.gz discovery
	aws s3 cp discovery.tar.gz s3://karl-opa-testing/discovery.tar.gz --acl public-read
	opa build -b podinfo1-bundle -o podinfo1-bundle.tar.gz
	aws s3 cp podinfo1-bundle.tar.gz s3://karl-opa-testing/podinfo1-bundle.tar.gz --acl public-read
	opa build -b podinfo2-bundle -o podinfo2-bundle.tar.gz
	aws s3 cp podinfo2-bundle.tar.gz s3://karl-opa-testing/podinfo2-bundle.tar.gz --acl public-read
