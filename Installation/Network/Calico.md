== Calico Configuration during installation


https://github.com/codekow/demo-ocp-calico/blob/main/hacks/install_ocp_calico.sh



== Secondary Network



.
----
apiVersion: 'k8s.cni.cncf.io/v1'
kind: NetworkAttachmentDefinition
metadata:
  name: additional-calico-network
spec:
  config: '{
    "cniVersion": "0.3.1",
    "type": "calico",
    "log_level": "info",
    "datastore_type": "kubernetes",
    "mtu": 1410,
    "nodename_file_optional": false,
    "ipam": {
    "type": "calico-ipam",
    "assign_ipv4" : "true",
    "assign_ipv6" : "false"
    },
    "policy": {
    "type": "k8s"
    },
    "kubernetes": {
    "kubeconfig": "/etc/cni/net.d/calico-kubeconfig"
    }
    }'
----