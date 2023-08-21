c1
oc project database
helm template -f ./values-1.yaml . | oc delete -f -
c2
oc project database
helm template -f ./values-2.yaml . | oc delete -f -

