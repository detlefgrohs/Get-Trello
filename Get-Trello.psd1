#
# Module manifest for module 'HttpApplication'
#
# Generated by: Detlef Grohs
#
# Generated on: 12/26/2018
#

@{

    # Script module or binary module file associated with this manifest.
    RootModule = "Get-Trello.psm1"
    
    # Version number of this module.
    ModuleVersion = '0.1.0'
    
    # Supported PSEditions
    CompatiblePSEditions = @('Desktop', 'Core')
    
    # ID used to uniquely identify this module
    GUID = '25163bbf-7701-49d4-9639-3689e0b74125'
    
    # Author of this module
    Author = 'Detlef Grohs'
    
    # Company or vendor of this module
    CompanyName = 'Code Monkey Enterprises'
    
    # Copyright statement for this module
    Copyright = '© Code Monkey Enterprises. All rights reserved'
    
    # Description of the functionality provided by this module
    Description = 'PowerShell module that provides API access to Trello.'
    
    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '5.1'
    
    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''
    
    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''
    
    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()
    
    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    ScriptsToProcess   = @(
        "Public\Set-TrelloApiValues.ps1",

        "Public\Get-TrelloBoards.ps1",
        "Public\Get-TrelloBoard.ps1",
        
        "Public\Get-TrelloLists.ps1",
        "Public\Get-TrelloList.ps1",

        "Public\New-TrelloCard.ps1",
        "Public\Get-TrelloCards.ps1",

        "Public\New-TrelloChecklist.ps1",
        "Public\New-TrelloChecklistItem.ps1",

        "Public\Get-TrelloCustomFields.ps1",
        "Public\Get-TrelloCustomField.ps1",
        "Public\Get-TrelloCustomFieldOptions.ps1",
        "Public\Get-TrelloCustomFieldOption.ps1"

        "Public\Set-TrelloCardCustomFieldOption.ps1",
        "Public\Set-TrelloCardCustomFieldText.ps1"
    )
    
    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()
    
    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()
    
    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    # NestedModules = @()
    
    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport  = @(
        'Set-TrelloApiValues',

        'Get-TrelloBoards',
        'Get-TrelloBoard',

        'Get-TrelloLists',
        'Get-TrelloList',

        'New-TrelloCard',
        'Get-TrelloCards',

        'New-TrelloChecklist',
        'New-TrelloChecklistItem',

        'Get-TrelloCustomFields',
        'Get-TrelloCustomField',
        'Get-TrelloCustomFieldOptions',
        'Get-TrelloCustomFieldOption',

        'Set-TrelloCardCustomFieldOption',
        'Set-TrelloCardCustomFieldText'
        )
    
    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport    = @()
    
    # Variables to export from this module
    VariablesToExport  = '*'
    
    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport    = '*'
    
    # List of all modules packaged with this module
    # ModuleList = @()
    
    # List of all files packaged with this module
    # FileList = @()
    
    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData        = @{
    
        PSData = @{
    
            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = @('web','core','framework','REST')
    
            # A URL to the license for this module.
            LicenseUri = 'https://github.com/detlefgrohs/Get-Trello/blob/master/LICENSE.txt'
    
            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/detlefgrohs/Get-Trello'
    
            # A URL to an icon representing this module.
            # IconUri = ''
    
            # ReleaseNotes of this module
            ReleaseNotes = @'
# 0.1.0

Initial Release.
'@
    
        } # End of PSData hashtable
    
    } # End of PrivateData hashtable
    
    # HelpInfo URI of this module
    # HelpInfoURI = ''
    
    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''
    
}