# 📱 CommitMe Service Cloud Management

CommitMe 서비스 클라우드 관리용 리포지토리 입니다.

### 관리자 

| 이름 | 역할 | 주요 업무 |
|------------------|------|------------|
| day.hong(홍대의) | PM/클라우드 | - IAM Users 및 보안 총괄 <br/> - CICD 파이프라인 관리 및 버저닝 |
| jun.bae(배준범) | 클라우드 | - IaC 관리 |
| joy.yoon(윤정온) | 클라우드 | - |

<br/>

## IAM Users 관리

| 사용자 이름 | 목적 | 부여 역할 | 사용주체 | 액세스 키 여부 | 상태 |
| --- | --- | --- | --- | --- | --- |
| iam-joy | - AWS 클라우드 인프라 관리 / 개발 <br/> - 클라우드 공동 관리자 | AdministratorAccess | joy(클라우드) | X | 사용중 |
| iam-jun | - AWS 클라우드 인프라 관리 / 개발 <br/> - 클라우드 공동 관리자 | AdministratorAccess | jun(클라우드) | X | 사용중 |
| iam-s3 | - BE 개발 중 S3 PUT, GET presigend URL 발급용 | "Action": ["s3:PutObject", "s3:GetObject" ], <br/> "Resource": "arn:aws:s3:::my-bucket/uploads/*” | theta(풀스택) | O | 사용중 |
| ssm_parameter_viewer | - 애플리케이션 환경변수 확인용 <br/>(SSM Parameter store 읽기권한) | AmazonSSMReadOnlyAccess | theta(풀스택) <br/> zero(풀스택) <br/> ned(인공지능) | X | 사용중 |
| terraform | Terraform 관리용 | AdministratorAccess | jun(클라우드) | O | 사용중 |
| iam-bedrock | 로컬에서 BedRock 호출 테스트용 | AmazonBedrockLimitedAccess | ned(인공지능) | O | 사용중 |

<br/>

## IAM Role 관리

| 역할 이름 | 목적 | 부여 역할 | 사용주체(신뢰관계) | 상태 |
| --- | --- | --- | --- | --- |
| ec2-dns-cert-renew | ec2 ssl 인증서 갱신 | <ul> <li>route53:ListHostedZones</li> <li>route53:ListResourceRecordSets</li></ul> | ec2 | 사용중 |

## IaC 관리


## CI/CD 관리 및 버저닝 

