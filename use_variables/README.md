# Terraform Variable

Terraform에서 프로그래밍언어에서 사용하는 `변수`의 개념을 사용할 수 있다.
string, number, bool 뿐만아니라, list(), set(), map(), object({ = ,  }) 등도 사용할 수 있다.

`varable`블록을 이용해 변수 선언을 할 수 있다.  
`terraform.tfvars` 파일에서 정의한 변수에 값을 주입할 수 있으며  
`output` 블록을 이용해 변수에 값이 잘 들어갔는지 출력형태로 확인할 수 있다.  