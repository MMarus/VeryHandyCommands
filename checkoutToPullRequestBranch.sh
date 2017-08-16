git remote add upstream git@github.com:wildfly/wildfly-core.git
git fetch upstream refs/pull/2533/head
git checkout -b add-user-fixes FETCH_HEAD
