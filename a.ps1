Connect-MsolService
$domainName = “”
# 需要和你G Suite的域名一样
$Authentication = “Federated”
$FederationBrandName = “Google Cloud Identity”

$IssuerUrl = “https://accounts.google.com/o/saml2?idpid=”
$PassiveLogOnUrl = “https://accounts.google.com/o/saml2/idp?idpid=”
$ActiveLogOnUrl = “https://accounts.google.com/o/saml2/idp?idpid=”
# 上面三个Url参数看帖子
$LogOffUrl = “https://accounts.google.com/logout”

$SigningCertificate = “”
# 填入Google 下载的证书

Set-MsolDomainAuthentication -DomainName $domainName -Authentication $Authentication -FederationBrandName $FederationBrandName -IssuerUri $IssuerUrl -ActiveLogOnUri $ActiveLogOnUrl -PassiveLogOnUri $PassiveLogOnUrl -LogOffUri $LogOffUri -SigningCertificate $SigningCertificate -PreferredAuthenticationProtocol SAMLP
