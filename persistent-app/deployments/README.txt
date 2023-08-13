acm_rbd - Subscription z label persistent-app: true - resource z persistent-app/deployments/kustomize_ceph_rbd
gitops_acm_rbd - ApplicationSet z label persistent-app: true - resource z persistent-app/deployments/kustomize_ceph_rbd
kustomize_ceph_rbd - uzywa persistent-app/resources i wymusza uzycie storageclass typu ceph-rbd
