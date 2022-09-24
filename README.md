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
> terraform init

<br />

### **🤔 plan**
> terraform plan


<br />

### **🤔 apply**
> terraform apply


<br />

### **🤔 destroy**
> terraform destroy


<br />

### **🤔 import**
> terraform import




<br />
<hr>
<br />

## **Terraform 기본 파일**


### **🤔 .terrform/**

<br />

### **🤔 .terraform.lock.hcl**