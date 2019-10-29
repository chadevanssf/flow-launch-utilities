# flow-launch-utilities

A collection of useful abilties when luanching flows.

## Setup using SFDX CLI

1. Log into DevHub, if not already logged in
1. Create a scratch org
    ```sh
    sfdx force:org:create -f config/project-scratch-def.json -a flowutil -s
    ```
1. Ensure Communities is enabled, and Enable ExperienceBundle Metadata API is True
    * Setup > Feature Settings > Communities > Communities Settings
1. Deploy Source
    ```sh
    sfdx force:source:push -u flowutil
    ```
1. Assign permission set
    ```sh
    sfdx force:user:permset:assign -u flowutil -n Test_Config
    ```
1. Update Community Guest Profile to have read access to Newsletter__c, and read/update to Signup__c, Newsletter_Subscription__c, and Apex Class "GuidUtil"
1. Set Default Data
    ```sh
    sfdx force:data:tree:import -u flowutil -p ./data/Data-plan.json
    ```
1. Open the Scratch Org
    ```sh
    sfdx force:org:open -u flowutil
    ```

## Component Inventory

### flowWithUrlParams

Ever wanted to pass in variable from a community url into your flow as parameters? Grabs the defined list of url parameters and provides them to your flow, mapped to your input variables.

*Community Only*

### flowModalFromButton

Need to launch a flow inside of a modal dialog box? Puts your flow into a dialog box that is lanched from button.

### flowModalFromButtonGroup

Want the same functionality as flowButtonIntoModal, but for a button group? Puts your flows into a dialog box that is launched from one of a number of buttons.