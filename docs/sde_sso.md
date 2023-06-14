# SDElements Keycloak Configuration
This document will explain how to configure keycloak with sdelements. This assumes you have the sample manifests applied.

## Configuration items
* Keycloak
* SDElements

## SDElements Configuration
* Follow the official SAML SSO guide from SDElements [here](https://docs.sdelements.com/master/sysadmin/docs/container/sso/saml/)
* Request `remote_idp_metadata.xml` from CNAP
  * Upload that `metadata.xml` under the `Upload Identity Provider Metadata File:` section
* Upload your `SAML private key`
* Upload your `SAML X509 cert`
* Leave the remaining settings as default
* Once settings have been saved, download the `SD Elements metadata file` and share it back to the CNAP team.  

These are the items you need to do after keycloak and sdelements are working on your cluster.

### Keycloak Configuration

- Create a sdelement client scope with the following mappings

  | Name      | Mapper Type      | Mapper Selection Sub | Token Claim Name   | Claim JSON Type |
  |-----------|------------------|----------------------|--------------------|-----------------|
  | email     | User Property    | email                | email              | String          |
  | givenname | User Property    | first name           | N/A                | N/A             |
  | groups    | Group Membership | groups               | groups             | N/A             |
  | surname   | User Property    | last name            | N/A                | String          |

Keycloak client configuration should look like the following:
```json
{
  "clientId": "https://sdelements.example.mil/sso/saml2/metadata/",
  "name": "IL4 Example SD Elements",
  "description": "il4_8daf2c88-0205-4f1b-b74b-028550b86668_example-sdelements",
  "rootUrl": "https://sdelements.example.mil",
  "surrogateAuthRequired": false,
  "enabled": true,
  "alwaysDisplayInConsole": false,
  "clientAuthenticatorType": "client-secret",
  "secret": "RvskTHTAlyN7pkZXMeFxiD6O8Viuf9Z6",
  "redirectUris": [
    "https://sdelements.example.mil/",
    "https://sdelements.example.mil/*"
  ],
  "webOrigins": [],
  "notBefore": 0,
  "bearerOnly": false,
  "consentRequired": false,
  "standardFlowEnabled": true,
  "implicitFlowEnabled": false,
  "directAccessGrantsEnabled": false,
  "serviceAccountsEnabled": false,
  "publicClient": false,
  "frontchannelLogout": true,
  "protocol": "saml",
  "attributes": {
    "saml.force.post.binding": "true",
    "saml.multivalued.roles": "false",
    "post.logout.redirect.uris": "+",
    "oauth2.device.authorization.grant.enabled": "false",
    "backchannel.logout.revoke.offline.tokens": "false",
    "use.refresh.tokens": "true",
    "saml.signing.certificate": "MIIC8zCCAdsCBgFzK/Jw/zANBgkqhkiG9w0BAQsFADA9MTswOQYDVQQDDDJpbDJfMDBlYjg5MDQtNWI4OC00YzY4LWFkNjctY2VjMGQyZTA3YWE2X3R3aXN0bG9jazAeFw0yMDA3MDgwMTAxMTVaFw0zMDA3MDgwMTAyNTVaMD0xOzA5BgNVBAMMMmlsMl8wMGViODkwNC01Yjg4LTRjNjgtYWQ2Ny1jZWMwZDJlMDdhYTZfdHdpc3Rsb2NrMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAk/mEM2QcS2vQbHX1TPP2hhqIrmRq6DL7APlFfwd3vBrA2Dg8mKKpwujaXiqwuHc80CsI4GV2+LHxiLsKn9lwvfFcAl0rw0ZXiMRJFcBm81qnnn6xCE2q5AyItwWOaHgSx6koRMmEZ/VANKGCNAtabAqjP4aV/fnPaXODceBiB1RPernzBeZe7aGmXtfL/3lC6rdDkzuu+BZLE/Y7Jfq9FLCF+ItzlKlWDF59rM9t4mLAv0Io7YOd66HPG5EzckFkbnp6QpNbCeW4NYCle4zEx8gj2hVOjoZwAsx9XLy2+Bvqj7nr527/EnHc+4QfRGS1ZFUzPgA458kke/RgG3Nf5QIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQA6leKQaiQfCW6k2jQViliVwSbYMGZa8jP1RYaW3bl7U7pu5RlGoAPFG8K4NO8N+vrS2L7Vrs4iirgxRDwGvmcA3RzhNsmXPMoFKX+rbiUPB4N0wbL/AnL5c9Viig7qe/MJuRbiwZJPzxI2QiQXzXzu+pRGANlwAusn8hoxdyaFSdfs3TgOVk+wPN/EKqylIUjedTknGn4vZoom6SnSAHXFvgeygV089BpvLnHgcQWwJdn5jDyBwreoL0XUm8e9kFctwYsrWnGhK2ohIy2v9Td0HaaICe8qrsmdxz6CUHBo3yQ0WUieC8+oLAQra6FfnyHCnE1cDnrfuzZo5DmWi0gb",
    "oidc.ciba.grant.enabled": "false",
    "backchannel.logout.session.required": "false",
    "saml.signature.algorithm": "RSA_SHA256",
    "client_credentials.use_refresh_token": "false",
    "saml.client.signature": "false",
    "saml.signing.private.key": "MIIEpAIBAAKCAQEAk/mEM2QcS2vQbHX1TPP2hhqIrmRq6DL7APlFfwd3vBrA2Dg8mKKpwujaXiqwuHc80CsI4GV2+LHxiLsKn9lwvfFcAl0rw0ZXiMRJFcBm81qnnn6xCE2q5AyItwWOaHgSx6koRMmEZ/VANKGCNAtabAqjP4aV/fnPaXODceBiB1RPernzBeZe7aGmXtfL/3lC6rdDkzuu+BZLE/Y7Jfq9FLCF+ItzlKlWDF59rM9t4mLAv0Io7YOd66HPG5EzckFkbnp6QpNbCeW4NYCle4zEx8gj2hVOjoZwAsx9XLy2+Bvqj7nr527/EnHc+4QfRGS1ZFUzPgA458kke/RgG3Nf5QIDAQABAoIBAQCAmPjuHJOGbDUe/UhoTyCwnMCqJjTOhPekef2OjvPcsrdjcUQgNkUoUWrtKVaZiW59TtkRArzpFuPcuwhZsQOM3wPiPgx5UVljT4pgb+xIk0FWua2qlKzuMYJi5F5FpgxUHksTtLnwCrB4zN+10SQM/xWucI1Lwl0hvLTAM4ud563lIthzoTkYZDnNId0IVtRoViPbk5CtqDIcFbzTCngARPzRsdhPMZnO3f8EPOHAtz/oeDWxqDXLPr9Cp5rQII57um4UInoBm8knU8W+BzUjLNxwywFS/BQD9EMJcPt5NgAxq0/owlakP5rqwZobsPL5B0Qk0bz+UbiH12Cv32jFAoGBAORkcDakBrJiaidO4O0mL5lhpiHHelmCs/UQP/P3Cat4DlUMJ3xfMJKVphdsnnEZrsApEP/rSN8aSxr5+fyj5OhLy9KyEcYE0G6w5NyMKOBgmkpEfn7ygfH5qZzVpbIk/hDTybaYS4Ox4/suZHaDc6LvOReTVufTyjIKT2gDLJtLAoGBAKXckTj/c/whS8IHRwZtypGvdXaq5YCMiGTx5BNkG+v7lfS3oLi2nI9XGI+qIRNyztVTYrkt5GTqaHprxMHvIrFcgOFvymtZMLqWjVDfHWZeJ1IdAp4fO1QfKxtm0BZQH4nq2RfveaP4qlQn3vGqqAUfHoDFknh5fT3wrkHoLEOPAoGADYkWTWazLuc+O04lbmiQ8Zoj6mSUD7H7UE7CO4csf4kB8HBj9q79hfJwgXriePl4rdLBOymKjA5W3SZrdlmQO2QilD4RZ5bpc2XwalG0KngPLM+aX5Ont9t//dd7lm8yz3R9w+CKuSdVx5EcSxnHRKTA0XDd+adHmGecBSILBrkCgYBZQa1VAwOjtzdRnyD1sLfGVqnbxnPjDb2ItTOLy9/KyoUUQI1ZWcw+xxwMk/1gvfPYkRsblDrIo+y9lKk5xDrjP2iL6OEBi+nRP5uk3aywnhKC+eGiviPrTSqhgF6S42NVkPBrFRBc0UC4MQyk+LWaq/h6S9haxOZFIvRju1G2uQKBgQCpDkf1NQiNPqYB4HxFsO0wVs+IrxY+2PlBQffOagVy/sgoj7M7ux0wRjn5tMSv3BUPLQxwfnxhXzTJqXls7+lThgyHFc01uO+IUew0H2t+SAfG8eRzyKJExeLt/zszDlKWJEMnbmFGheGrilTnOwF7hVaVo9HpQEf5POgdWI/Erg==",
    "saml.allow.ecp.flow": "false",
    "saml.assertion.signature": "false",
    "id.token.as.detached.signature": "false",
    "client.secret.creation.time": "1682451851",
    "saml_single_logout_service_url_post": "https://sdelements.example.mil/sso/saml2/ls/post/",
    "saml.encrypt": "false",
    "saml$server$signature": "true",
    "saml.server.signature": "true",
    "exclude.session.state.from.auth.response": "false",
    "saml.artifact.binding.identifier": "q0pJqF2RZWmmb1JgpmwInr85bg8=",
    "saml.artifact.binding": "false",
    "saml_single_logout_service_url_redirect": "https://sdelements.example.mil/sso/saml2/ls/",
    "saml_force_name_id_format": "false",
    "tls.client.certificate.bound.access.tokens": "false",
    "saml.authnstatement": "true",
    "display.on.consent.screen": "false",
    "saml_name_id_format": "transient",
    "saml.onetimeuse.condition": "false",
    "saml_signature_canonicalization_method": "http://www.w3.org/2001/10/xml-exc-c14n#"
  },
  "authenticationFlowBindingOverrides": {
    "browser": "50e7aa5c-fd4a-40e9-9629-a155f9794265"
  },
  "fullScopeAllowed": true,
  "nodeReRegistrationTimeout": -1,
  "protocolMappers": [
    {
      "name": "groups",
      "protocol": "saml",
      "protocolMapper": "saml-group-membership-mapper",
      "consentRequired": false,
      "config": {
        "single": "true",
        "full.path": "true",
        "friendly.name": "groups",
        "attribute.name": "groups"
      }
    },
    {
      "name": "X500 email",
      "protocol": "saml",
      "protocolMapper": "saml-user-property-mapper",
      "consentRequired": false,
      "config": {
        "user.attribute": "email",
        "friendly.name": "email",
        "attribute.name": "email"
      }
    },
    {
      "name": "X500 givenName",
      "protocol": "saml",
      "protocolMapper": "saml-user-property-mapper",
      "consentRequired": false,
      "config": {
        "user.attribute": "firstName",
        "friendly.name": "firstName",
        "attribute.name": "firstname"
      }
    },
    {
      "name": "X500 surname",
      "protocol": "saml",
      "protocolMapper": "saml-user-property-mapper",
      "consentRequired": false,
      "config": {
        "user.attribute": "lastName",
        "friendly.name": "lastName",
        "attribute.name": "lastname"
      }
    }
  ],
  "defaultClientScopes": [
    "role_list"
  ],
  "optionalClientScopes": [],
  "access": {
    "view": true,
    "configure": true,
    "manage": true
  }
}
```

KeyCloak Settings:
* Authentication flow overrides
1. Set the Browser Flow settings to the following:
2. P1 Authentication without group auth
