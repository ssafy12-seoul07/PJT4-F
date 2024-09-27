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

# 1. gitignore 이슈
- 처음 PJT 레포를 만들고서 gitignore 파일을 넣지 않은 채, first Commit 실행
- gitignore 파일 누락 확인 후, 추가
- gitignore가 적용되지 않았음
- gitignore의 파일명에 "." 누락 되어있음 확인 후 수정, 추가 완료
- 작동 확인 완료.
- 
# 2. contextroot 수정
- 사전제공코드 zip 파일을 import 하여 프로젝트를 시작하였음
- 그로 인해 Context Root 가 PJT4_F 가 아닌 backEnd_05_MVC 로 설정된 채로 진행.
- Tomcat 서버의 Context Root 또한  backEnd_05_MVC 로 설정
- > STS에서 이미 실행된 프로젝트의 컨텍스트 루트 변경하기
  > STS에서 컨텍스트 루트 변경하기
1. 프로젝트 설정 변경
Project Explorer에서 프로젝트를 우클릭합니다.
Properties를 선택합니다.
왼쪽 메뉴에서 Web Project Settings를 선택합니다.
Context root 필드에서 원하는 컨텍스트 루트로 변경합니다 (예: /newContextRoot).
변경사항을 적용하고 닫기 버튼을 클릭합니다.
2. 서버 설정 조정
Servers 탭을 열어 등록된 서버를 우클릭하고 Open을 선택합니다.
프로젝트와 관련된 Modules 탭을 찾습니다.
수정하고자 하는 프로젝트를 선택하고 Edit를 클릭합니다.
Path 필드에서 원하는 컨텍스트 루트를 입력합니다 (예: /newContextRoot).
OK를 클릭하여 변경사항을 저장합니다.
3. 서버 재시작
변경사항이 적용되도록 서버를 Restart합니다. 이를 위해 Servers 탭에서 서버를 선택하고, 마우스 오른쪽 버튼을 클릭한 후 Restart를 선택합니다.

3. forward , form태그 hidden

4. 변수 이름
