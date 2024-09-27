# PTJ4-F

> 팀장 : 최혁규  
> 팀원 : 김서현, 배장한

## 요구사항
Ssafit Backend 파트 구현

### 기본 기능
- 메인페이지 영상 조회 기능: 조회수 기준 영상, 운동 부위별 영상
- 운동 영상에 대한 리뷰 관리 기능: 리뷰 목록, 리뷰 CRUD

## 구현 방식
MVC 패턴

- Controller, DAO, DTO 이용

## 발생한 이슈

## 1. gitignore 이슈
- 처음 PJT 레포를 만들고서 gitignore 파일을 넣지 않은 채, first Commit 실행
- gitignore 파일 누락 확인 후, 추가
- gitignore가 적용되지 않았음
- gitignore의 파일명에 "." 누락 되어있음 확인 후 수정, 추가 완료
- 작동 확인 완료.
- 
## 2. contextroot 수정
- 사전제공코드 zip 파일을 import 하여 프로젝트를 시작하였음
- 그로 인해 Context Root 가 PJT4_F 가 아닌 backEnd_05_MVC 로 설정된 채로 진행.
- Tomcat 서버의 Context Root 또한  backEnd_05_MVC 로 설정
- 
### GPT에게 질문
> STS에서 이미 실행된 프로젝트의 컨텍스트 루트 변경하기
### 답변 요약
> 프로젝트의 Web Project Settings 에서 Context Root 수정 후, 서버 모듈 탭에서 마찬가지로 Context Root 수정 후 서버 재시작

## 3. forward , form태그 hidden = " "
- 컨트롤러에서 JSP로 FORWARD 했을 때, 해당 JSP 내의 FORM 태그가 있을 경우 REQUEST가 초기화 되기 때문에
- 다시 한번 컨트롤러로 FORM태그 HIDDEN, NAME, VALUE로 보내줘야 한다!!!

## 후기


