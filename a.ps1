Connect-MsolService
$domainName = ����
# ��Ҫ����G Suite������һ��
$Authentication = ��Federated��
$FederationBrandName = ��Google Cloud Identity��

$IssuerUrl = ��https://accounts.google.com/o/saml2?idpid=��
$PassiveLogOnUrl = ��https://accounts.google.com/o/saml2/idp?idpid=��
$ActiveLogOnUrl = ��https://accounts.google.com/o/saml2/idp?idpid=��
# ��������Url����������
$LogOffUrl = ��https://accounts.google.com/logout��

$SigningCertificate = ����
# ����Google ���ص�֤��

Set-MsolDomainAuthentication -DomainName $domainName -Authentication $Authentication -FederationBrandName $FederationBrandName -IssuerUri $IssuerUrl -ActiveLogOnUri $ActiveLogOnUrl -PassiveLogOnUri $PassiveLogOnUrl -LogOffUri $LogOffUri -SigningCertificate $SigningCertificate -PreferredAuthenticationProtocol SAMLP
