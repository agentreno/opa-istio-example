package envoy.authz

default allow = false

allow {
  input.attributes.source.principal == "spiffe://cluster.local/ns/default/sa/podinfo1"
}
