FROM alpine

LABEL "name"="GitHub API Fetch"
LABEL "description"="GitHub Action to get GitHub API responses and save them to repository."
LABEL "maintainer"="Kai Kimera <mail@kai.kim>"
LABEL "repository"="https://github.com/ghastore/github-api"
LABEL "homepage"="https://github.com/ghastore"

COPY *.sh /
RUN apk add --no-cache bash curl git git-lfs github-cli jq

ENTRYPOINT ["/entrypoint.sh"]
