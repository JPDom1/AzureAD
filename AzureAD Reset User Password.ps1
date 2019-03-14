#Reset user password from AzureAD
#JP Erasmus
#14/03/2019
#USE AT OWN RISK!

#Connect to Azure AD

Connect-AzureAD 

#Asks to input username
[void][reflection.assembly]::LoadWithPartialName('microsoft.visualbasic')
$username = [Microsoft.VisualBasic.Interaction]::InputBox("'What is the username for the password change?'", "Username")

#Input new password
$password = Read-Host -Prompt 'Enter new password for User' -AsSecureString

#Changes password

Set-AzureADUserPassword -ObjectId $username -Password $password -Verbose

#Writes the host to confirm this was completed

Write-Host "$username password has been changed"