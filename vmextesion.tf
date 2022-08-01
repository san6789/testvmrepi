
WINDOWS VM:

resource "azurerm_virtual_machine_extension" "name" {
  name =  "vmextension"
  virtual_machine_id = azurerm_windows_virtual_machine.this.id
  publisher            = "Microsoft.Compute"
  type                 = "CustomScriptExtension"
  type_handler_version = "1.10"

   settings = <<SETTINGS
  {
    "fileUris": ["xxxxxxx"],  
     "commandToExecute": "powershell -ExecutionPolicy Unrestricted -File windowfile.ps1",
     "managedIdentity" : {}
   }  
  SETTINGS

}

LINUX VVM EX:

resource "azurerm_virtual_machine_extension" "name" {
  name =  "vmextension"
  virtual_machine_id = azurerm_linux_virtual_machine.this.id
  publisher            = "Microsoft.Azure.Extensions"
  type                 = "CustomScript"
  type_handler_version = "2.0"

  settings = <<SETTINGS
  {
    "fileUris": ["cxxxxxxxxxxxxxxxxxxxxxxxxxxx"],  
     "commandToExecute": "sh file.sh"
     
  }
  SETTINGS
}
