package discovery

config := {
  "services": {
    "s3": {
      "url": "https://karl-opa-testing.s3.eu-west-1.amazonaws.com"
    }
  },
  "bundles": {
    "main": {
      "service": "s3",
      "resource": bundle_name
    }
  },
  "decision_logs": {
    "console": true
  },
  "plugins": {
    "envoy_ext_authz_grpc": {
      "addr": ":9191",
      "path": "envoy/authz/allow",
      "enable-reflection": true
    }
  }
}

rt := opa.runtime()
service_name := rt.config.labels.service_name
bundle_name := service_bundles[service_name]

service_bundles := {
  "podinfo1": "podinfo1-bundle.tar.gz",
  "podinfo2": "podinfo2-bundle.tar.gz"
}
