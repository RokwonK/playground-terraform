# playground-terraform
사용법 익히기  
Terraform은 IaC(Infra as Code) 도구이며 여러 클라우드 플랫폼에서 사용가능하다.
- infra 수정의 히스토리를 알 수 있는 장점
- 인프라를 코드를 이용하여 구성하기에 각 자원의 정책 및 관리에 원활하다는 장점을 가지고 있다.
- dev, stage, prod 등의 동일한 자원 구성을 가지지만 개발환경만 다를 경우 빠르게 다른 환경을 배포 및 관리할 수 있다.

<br />

### **Terraform 사용 전 준비**
1. aws 계정생성
2. aws cli 설치
3. terraform 설치
4. aws IAM 유저생성(console, programming 접근 체크) - 액세스 키 ID, 비밀 액세스 키, 비밀번호 저장
5. aws configure 설정(cli 유저 로그인)
6. terraform 사용준비 완료  

<br />

## **Terraform 기본 명령어**
<br />

### **🤔 init**
Terraform이 동작할 working Directory를 지정하는 명령어(해당 디렉터리에서는 .tf 파일을 읽을 수 있도록)  
명령어 입력시 `.terraform`, `.terraform.lock.hcl` 파일이 생성됨
```shell
terraform init
```

<br />

### **🤔 plan**
실제 자원을 생성하기 전에 어떤 자원들이 생성/수정/삭제 될 것인지를 알아볼 수 있는 미리보기 기능
```shell
terraform plan
```

<br />

### **🤔 apply**
terraform 코드를 작성 후 코드에 맞추어 실제로 자원을 생성/수정/삭제를 해주는 명령어.  
생성 후에는 `terraform.tfstate`파일이 만들어짐.
```shell
terraform apply
```


<br />

### **🤔 destroy**
생성되어 있는 자원을 삭제해주는 명령어.
```shell
terraform destroy
```

<br />

### **🤔 import**
인프라(aws)에 배포되어 있는 자원을 terrform state로 옮겨주는 명령어.  
하지만 `~.tf`을 생성해주진 않음 `terrform plan`을 통해 바뀌는 정보를 확인한 후에 직접 tf 파일을 생성하여 싱크를 맞추어 줘야함.
```shell
terraform import
```


<br />
<hr>
<br />

## **Terraform 기본 파일**


### **🤔 .terrform/**
provider(설정한 인프라 환경)/사용하고 있는 모듈 관리, 현재 활성화된 작업공간을 기록, 상태를 바꿔어야할 때를 대비하여 마지막으로 구성된 상태가 기록되어 있는 디렉터리이다.

<br />

### **🤔 .terraform.lock.hcl**
의존성 정보가 기록된 파일. 외부환경인 provider와 module들에 대한 정보가 적혀 있으며 init 명령어 사용시 파일 내에 작성된 내용대로 설치됨

<br />

### **🤔 terraform.tfstate**
terraform apply를 통해 리소스를 생성하면 이 파일이 생성됨.  
명령어를 통해 만들어진 자원들의 상태가 저장되어있음.  
**현재 인프라의 상태를 의미하지는 않음**(console에서 직접 수정하는 경우에 자동 업데이트가 되지 않는다는 뜻)  
이 state는 원격 저장소인 ‘backend’에 저장하여 다수의 인원이 협업시에 사용될 수 있음.
