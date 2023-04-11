# istio-opa-example

## Description

Quick example code for running OPA as a sidecar in an Istio service mesh,
making authorisation decisions on API calls between services.

Podinfo used as an example service, since it can be configured to make onward
calls when receiving requests on the `/echo` endpoint.

Rego code very basic for now, enforcing requests to podinfo2 from podinfo1 only
based on Spiffe service account ID, but it illustrates discovery of OPA config
and sending different policy bundles depending on the requesting service.
