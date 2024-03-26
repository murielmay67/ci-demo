# https://docs.renovatebot.com/modules/platform/gitea/
# https://www.cnblogs.com/Gitea/p/renovate.html

docker run --rm \
    --name renovate \
    -e RENOVATE_AUTODISCOVER=true \
    -e RENOVATE_ENDPOINT=https://git.yanhao.ren \
    -e RENOVATE_GIT_AUTHOR='Renovate Bot <gitea-renovatebot@oo1.dev>' \
    -e RENOVATE_PLATFORM=gitea \
    -e RENOVATE_TOKEN= \
    -e GITHUB_COM_TOKEN= \
    renovate/renovate:37
