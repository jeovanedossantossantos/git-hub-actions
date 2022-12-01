# git-hub-actions

<a href="https://renatogroffe.medium.com/docker-github-actions-parte-1-build-automatizado-de-aplica%C3%A7%C3%B5es-7346f04c7f4e">Docker + GitHub Actions - parte 1: build automatizado de aplicações</a>


Permite oter um tokem de autenticação.

````
{
    "Sid":"GetAuthorizationToken"

    "Effect":"Allow",

    "Action":[
        "ecr:GetAuthorizationToken"
    ],

    "Resource":"*"
}

```

Permite enviar imagens docker. Opcionalmente, você pode restringir a um único
repositório ECR ou usar * para permitir o acesso a qualquer repositório ECR em sua conta. Lembres-se de que você precisa atualizar a região e o número da cont. 

```
{
    "Effect":"Allow",
    "Action":[
        "ecr:BatchGetImage",
        "ecr:BatchCheckLayerAvailability",
        "ecr:CompleteLayerUpload",
        "ecr:GetDownloadUrlForLayer",
        "ecr:InitiateLayerUpload",
        "ecr:PutImage",
        "ecr:UploadLayerPart"
    ],
    "Resource":[
        "arn:aws:ecr:<região>:<número-da-conta>:repository/git-hub-actions"]
}

```

AllowPussPullPolicy

<a href="https://docs.github.com/pt/github-ae@latest/actions/automating-builds-and-tests/building-and-testing-python">Mais informações</a>




