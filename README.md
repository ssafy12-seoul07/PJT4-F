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
  그러나, detail.jsp에서는 갖고있는 모델이 video 이다 보니, Key 이름으로 "id" 라고 보내어 통신에 오류가 발생했다. <br>
  그래서 videoId로 수정하여 보냈다.)
  

## 후기

### 최혁규
오늘 진행한 프로젝트가 정말 재밌었다. 제대로된 PJT를 하는 느낌.. <BR>
팀원들과 머리를 맞대어서 디버깅을 같이 하는 시간 자체가 즐거웠다. <BR>
내가 처음에 사전제공코드 압축파일을 그대로 가져와 프로젝트를 뿌려서 기본 세팅이 양띵균 강사님께서 진행한 세팅으로 되어있었다. (ContextRoot)
그리고 gitignore 없이 첫 커밋을 푸쉬했고, 이를 확인하고 gitignore를 추가할 때에도, .gitignore로 파일명을 수정하지 않고 올려 수차례 반복작업을 했다.. 
<BR> 
### 정말 실수투성이 팀장이었다.!,!
<BR>
그래도 긍정적으로 생각하자면 덕분에 프로젝트 세팅 탭과 많이 친해졌다. ContextRoot 변경 방법에 대해서도 알아보았다. 
<BR>
프로젝트에서 바꾸는 것에서 멈추는 게 아니라, tomcat의 ContextRoot 설정도 프로젝트의 ContextRoot 값과 동일하게 설정되므로 tomcat의 설정 또한 변경해줬어야 했다. <BR>
6시간이라는 촉박한 시간 속에서, 변수의 이름과 넘겨주는 Key 네이밍 의논, 역할 분담 등을 모두 진행하려다 보니 머리가 정말 터질 것 같았지만 역시 어떻게든 되긴 했다. <BR>
매우 사소한 실수 하나로 작동하지 않고, 사소하기 때문에 더더욱 찾기 힘든 디버깅 과정이었지만 정말 도움이 되었다. 
<BR>
MVC 아키텍처가 실행되면서, 거쳐가는 모든 서블릿과 JSP에서 순차적으로 print 해보며, videoId를 파라미터로 잘 받아왔는지, list를 잘 순회하고 있는지 등을 확인했다. 
<BR>
그 결과 reviewRepository에 있는 리뷰들의 list를 순회해야 하는데, 리뷰들을 반환하는 getList 메소드에서 반환하기 위해 만든 list를 엉뚱하게 순회하고 있는 것을 찾아 고쳤다. 
<BR>
그리고 정말 오타 때문에 jsp에서 출력되지 않는 경우일때는 어이가 없으면서도 내가 구조를 잘못짠게 아니구나 라는 안도감이 함꼐 들었다. 
<BR>
누군가 EL태그에 오타 혹은 없는 객체를 쓰면 경고문구가 나오게끔 개발해주면 좋겠다.ㅎ

### 김서현
1. 사전 제공된 코드를 사용하면서 Context Root 설정을 바꾸는 과정이 필요했다. 팀 깃 레포를 만들고 처음에 수업에서 사용한 사전 제공 코드를 그대로 넣어 푸시하고 이후에도 그 파일을 그대로 사용했기때문이다. 작업도중에 Context Root가 PJT4_F가 아닌 Backend_05_MVC로 설정되어 있다는 것을 발견했고 프로젝트의 Context Root와 Tomcat 서버에서 재설정하는 과정이 필요했다. 덕분에 Context Root에 대해서도 다시 공부하게 되었고 STS에서 이미 실행된 프로젝트의 Context Root를 변경하는 법도 알게 되었다. 또 서버에서도 Context Root를 바꿔줘야 실행이 가능했어서 Tomcat 서버 설정도 살펴보는 시간이었다.
2. jsp에서 컨트롤러로 포워딩할 때, form 태그가 포함된 페이지에서 요청 객체가 초기화되어 원하는대로 동작하지 않아, 이 부분을 찾아내고 수정하는데 오랜 시간이 걸렸다. 디버깅을 하고 찾아내는데 오래걸렸지만 함께 로그를 찍어가면서 동작과정을 눈으로 확인할 수 있었다.
3. 이번 관통 pjt에서 jsp를 많이 다룰 수 있는 기회가 되어서 좋았다. 그 과정에서 JSTL도 사용해보고 요청도 보내보고 그동안 하나의 개념으로만 알고있었던 MVC패턴으로 직접 기능을 설계하고 Controller에서 요청을 Model을 통해 요청을 처리하는 과정을 완성해가면서 CRUD를 라이트하게 구현해볼 수 있었다. 특히 비슷한 코드들이 많고 요청을 처리하고 페이지를 연결하는 과정에서 변수를 보내줘야했기때문에 어떤 변수를 쓰는지를 잘 정의해두는 것이 필요하다는 것을 느낄 수 있었다. (실제로 이번 PJT에서 변수명으로 인해 에러가 발생했던 경우가 많았다)

### 배장한
1. Review Repository 에서 사소한 코드 실수로 인해 함께 디버깅하는 시간을 많이 쏟았던 것이 아쉬웠다. 각자의 작업에서 테스트를 수행하는 방법을 몰라 아쉬웠다.
2. Review Model 생성 시 ID 값을 인메모리 상에서 1씩 증가하는 변수를 할당하였다. 하지만 Review Repository 인메모리 저장소의 List 자료구조에서의 갱신을 위해선 id 값을 찾아 brute-force 로 순회해야 했다. 이 과정에서의 시간 복잡도를 높이기 위해 이분 탐색을 구현해보았다. 하핫
3. 프로젝트 설정과 관련된 오류를 디버깅하는 논리적인 과정이 기억에 남는다.
  - Context Root 의 설정을 변경해야 하는 Config 파일이 많은 것이 의문이었다. GPT에 따르면 IDE 내 context root 설정과 프로젝트 내 설치된 tomcat server config의 <Context> 태그를 수정해야 했다.
  - tomcat에 프로젝트가 실릴 때 tomcat 설정이 자동으로 바뀌지 않는 것이 이상하다 생각하여 IDE 에서의 설정을 찾아보고자 했다.
  - 해당 프로젝트가 강의 자료를 그대로 복사해온 상태였고, .settings 가 제대로 ignore 되지 않았던 점을 근거로 해당 가설을 더 탐험해보았다.
  - 찾아보니 `.settings/org.eclipse.wst.common.component.xml`에 `<wb-module deploy-name="">` 의 deploy-name 이 기존 라이브 파일 설정의 디렉토리와 같았던 점이 의심되어 이를 직접 수정하였다.
  - 해당 파일을 현재 디렉토리와 정합이 잘 되도록 수정하고 다시 Tomcat 에 서버를 띄우니, GPT가 제안한 해결방법을 수행하지 않아도 문제를 해결할 수 있었다.
