aro
helm template -f ./values-1.yaml . | oc delete -f -
gcp1
helm template -f ./values-2.yaml . | oc delete -f -

