##############################################################
#This module allows the creation of Automation runbook 
##############################################################

#File for the Runbook
data "local_file" "AutomationRunBook" {
  filename = "${path.root}${var.SettingsFilePath}"
}

# Runbook creation

resource "azurerm_automation_runbook" "TerraAutomationRunbook" {
  name                          = "${var.AutomationRunbookName}"
  location                      = "${var.Location}"
  resource_group_name           = "${var.RGName}"
  account_name                  = "${var.AutomationAccountName}"
  log_verbose                   = "${var.LogVerboseActivated}"
  log_progress                  = "${var.LogProgressActivated}"
  description                   = "${var.RunbookDesc}"
  runbook_type                  = "${var.RunbookType}"
  publish_content_link {
    uri       = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-automation-runbook-getvms/Runbooks/Get-AzureVMTutorial.ps1"
    
  }
  content   = "${data.local_file.AutomationRunBook.content}"
  
}


