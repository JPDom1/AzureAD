#JP Erasmus 21/03/2019 :: Use at own risk.
#Connect to Office 365
Connect-MsolService
#Input users UPN (user@domain.com) to show if MFA is enabled. Blank result = Disabled.
$User = Get-MSolUser -UserPrincipalName user@domain.com
$User.StrongAuthenticationMethods