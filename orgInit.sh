sfdx force:org:create -f config/project-scratch-def.json -d 1 -s
sfdx force:source:push
sfdx force:user:permset:assign -n Test_Config
sfdx force:data:tree:import -p ./data/Test_Object__c-Test_Object_Child__c-plan.json
sfdx force:org:open