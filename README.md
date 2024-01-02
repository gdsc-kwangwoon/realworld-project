# realworld-project

방학 프로젝트로써, RealWorld를 따라 만드는 프로젝트를 진행합니다.  
팀으로 진행되는 프로젝트인 만큼, 각 파트를 참고해주세요.  
데모 페이지 : [링크](https://demo.realworld.io/#/)

## 공통 사항
0. 팀 프로젝트인 점을 확실히 해주세요.
1. 모든 프로젝트들은 github로 올려주시고, 공유해주세요.
2. 만약 기술적인 문제점이나, 질문이 있으시면 코어멤버나 리드에게 도움을 청하세요.
3. 기술 사용은 자유나, 역할을 분배하여 작업을 진행해주세요. (ex : Next.js 의 Route API를 이용한 서버리스 개발 )
4. 이 프로젝트는 평가용이 아닙니다. 프로젝트를 경험한다 라는 느낌으로 진행해주시면 좋을것같습니다. 
5. git 사용이 부족하신 분들을 위해 추후 세미나가 진행될 예정입니다 (1월 중)

## Front-End
프론트엔드는 [Front-End 템플릿](https://realworld-docs.netlify.app/docs/specs/frontend-specs/templates)을 참고해주세요.  
React로 개발하시는 경우, 위 템플릿의 [style](https://realworld-docs.netlify.app/docs/specs/frontend-specs/styles) 과 [Head](https://realworld-docs.netlify.app/docs/specs/frontend-specs/templates#head) 를 React public 폴더의 index.html에 정의해주세요.

기술 스택은 CRA, Next.js 등 자유롭게 하셔도 좋습니다. 
CRA의 경우는 Routing 라이브러리를 추가해주셔야합니다.   
(ex : react-router-dom , react-router ... )  
라우팅 규칙 또한 위 Document에 정의 되어있으니 참고바랍니다.

[API 문서](https://realworld-docs.netlify.app/docs/specs/frontend-specs/swagger)

## Back-End
[API 명세서](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints) 는 다음과 같습니다.  
이 문서를 참고하여 API를 만들어주세요.
API 명세서를 제외한 기능 구현은 다음과 같습니다. 
- Authenticate users via JWT (login/signup pages + logout button on settings page)
- CRU- users (sign up & settings page - no deleting required)
- CRUD Articles
- CR-D Comments on articles (no updating required)
- GET and display paginated lists of articles
- Favorite articles
- Follow other users

위 기능들 모두 명세서에 정의되어있으니 참고해주세요.
포스트맨을 이용하여 서버를 테스트할 수 있습니다. 
[링크](https://github.com/gothinkster/realworld/blob/main/api/Conduit.postman_collection.json)

기술 스택은 자유롭게 진행하셔도 좋습니다.  
Node.js / Spring Boot ...

## App
작성예정 

## 참고사항 
진행도 및 선택된 기술 스택에 따라, 추가적인 요구사항을 드릴 예정입니다.
만약 우리팀의 진척도가 빠르다면, 진척도에 따라 추가적인 요구사항을 드릴 예정입니다.


