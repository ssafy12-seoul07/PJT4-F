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

## 1. gitignore 
- 처음 PJT 레포를 만들고서 gitignore 파일을 넣지 않은 채, first Commit 실행
- gitignore 파일 누락 확인 후, 추가
- gitignore가 적용되지 않았음
- gitignore의 파일명에 "." 누락 되어있음 확인 후 수정, 추가 완료
- 작동 확인 완료.

## 2. Context Root 수정
- 사전제공코드 zip 파일을 import 하여 프로젝트를 시작하였음
- 그로 인해 Context Root 가 PJT4_F 가 아닌 backEnd_05_MVC 로 설정된 채로 진행.
- Tomcat 서버의 Context Root 또한  backEnd_05_MVC 로 설정

### GPT에게 질문
> STS에서 이미 실행된 프로젝트의 컨텍스트 루트 변경하기
### 답변 요약
> 프로젝트의 Web Project Settings 에서 Context Root 수정 후, 서버 모듈 탭에서 마찬가지로 Context Root 수정 후 서버 재시작

## 3. forwarding과 REQUEST의 초기화
- 컨트롤러에서 JSP로 FORWARD 했을 때, 해당 JSP 내의 FORM 태그가 있을 경우 REQUEST가 초기화 되기 때문에
- 다시 한번 컨트롤러로 FORM태그 HIDDEN, NAME, VALUE로 보내줘야 한다!!!

## 4. 파트별 변수 이름 통일
- 영상의 고유번호 videoId와, id를 통일하지 않고 쓰다보니 jsp 내에서 쿼리 파라미터로 넘겨줄 때 혼동이 있었다.
- request를 받는 Servlet 입장에서, Key의 이름을 조정했다.
- (video/detail.jsp에서는 Review 서블릿으로 video.id를 보내야한다. <br>
  review 서블릿은 review 모델이 id와 video.id 속성이 둘 다 있어서, 혼동을 줄이기 위해서 videoId 라는 Key 이름으로 받아야 했다.<br>
  그러나, detail.jsp에서는 갖고있는 모델이 video 이다 보니, Key 이름으로 "id" 라고 보내어 통신에 오류가 발생했다. 그래서 videoId로 수정하여 보냈다.)
  

## 후기

### 최혁규
### 김서현
### 배장한
1. Review Repository 에서 사소한 코드 실수로 인해 함께 디버깅하는 시간을 많이 쏟았던 것이 아쉬웠다. 각자의 작업에서 테스트를 수행하는 방법을 몰라 아쉬웠다.
2. Review Model 생성 시 ID 값을 인메모리 상에서 1씩 증가하는 변수를 할당하였다. 하지만 Review Repository 인메모리 저장소의 List 자료구조에서의 갱신을 위해선 id 값을 찾아 brute-force 로 순회해야 했다. 이 과정에서의 시간 복잡도를 높이기 위해 이분 탐색을 구현해보았다. 하핫
3. 프로젝트 설정과 관련된 오류를 디버깅하는 논리적인 과정이 기억에 남는다.
  - Context Root 의 설정을 변경해야 하는 Config 파일이 많은 것이 의문이었다. GPT에 따르면 IDE 내 context root 설정과 프로젝트 내 설치된 tomcat server config의 <Context> 태그를 수정해야 했다.
  - tomcat에 프로젝트가 실릴 때 tomcat 설정이 자동으로 바뀌지 않는 것이 이상하다 생각하여 IDE 에서의 설정을 찾아보고자 했다.
  - 해당 프로젝트가 강의 자료를 그대로 복사해온 상태였고, .settings 가 제대로 ignore 되지 않았던 점을 근거로 해당 가설을 더 탐험해보았다.
  - 찾아보니 `.settings/org.eclipse.wst.common.component.xml`에 `<wb-module deploy-name="">` 의 deploy-name 이 기존 라이브 파일 설정의 디렉토리와 같았던 점이 의심되어 이를 직접 수정하였다.
  - 해당 파일을 현재 디렉토리와 정합이 잘 되도록 수정하고 다시 Tomcat 에 서버를 띄우니, GPT가 제안한 해결방법을 수행하지 않아도 문제를 해결할 수 있었다.