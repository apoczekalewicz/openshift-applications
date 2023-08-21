c1
oc new-project database
helm template -f ./values-1.yaml . | oc create -f -
c2
oc new-project database
helm template -f ./values-2.yaml . | oc create -f - 

echo Settings:
echo ""
grep ^db values-1.yaml
GLOBALSERVICENAME=$( cat values-1.yaml | grep globalservicename | cut -f2 -d" ") 
NAMESPACE=$( cat values-1.yaml | grep namespace | cut -f2 -d" ") 
echo "dbhost: ${GLOBALSERVICENAME}.${NAMESPACE}.svc.cluster.local"
