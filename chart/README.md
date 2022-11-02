# This chart will install SDElements and required dependencies.

## Installing SDElements from a Chart repo (requires Kubernetes and Helm v3)

**To add the repository make sure you replace the username (acme) with your account name and
password with the 32 character secret.**

```bash
$ helm repo add sdelements "https://helm.sdelements.com/prod" --renegotiate FreelyAsClient --username sc_acme --password 1951aaf2420611ea893817e7c2c2288c
```

By default the account sde-superuser@sdelements.com will be created with a
random password, this means that password recovery requests will be
sent to the Security Compass support team which will assist with recovering
lost superuser credentials.

If you wish to handle this password recovery yourself you will need to
configure and provide a valid superuser email address for an administrator user/group
and enter the superuser password, we recommend using at least 16 characters for
the password, a mix of upper/lower case with symbols.


**To install run the following command, make sure you replace the username (acme) with your account name and the
password with the 32 character secret.**

```bash
$ helm install sdelements/sde --set global.imageRegistryUsername=sc_acme --set global.imageRegistryPassword=1951aaf2420611ea893817e7c2c2288c --generate-name
```

**To deploy from the development lifecycle env from the development server
please use the following

```bash
container_repo_password=MySuperSecret
source shtdlib.sh
get_git_ref
cd helm/sde
helm install ./ --set global.imageRegistryUsername=$USER \
                --set global.imageRegistryPassword=$container_repo_password \
                --generate-name --set global.imageTag=$git_ref \
                --set global.imageRegistry=docker-dev.sdelements.com \
                --set global.imageOrganization=dev \
                --set global.imagePullPolicy=Always \
                --set global.imageRegistryFormat="%s/%s_%s/%s:%s"
```

