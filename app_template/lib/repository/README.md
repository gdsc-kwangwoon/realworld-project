## RealWorld 1 - repository

서버와 직접적으로 통신하는 부분이 기술된 곳입니다.
현재 auth, profile, article 과 관련된 respository는 구현이 완료되어 있습니다.

통신 부분은 dio 라이브러리를 사용했으며, 그에 따라 interceptor 부분도 별도로 구현해 놓았습니다.
(이 부분은 별도의 수정 없이 사용하셔도 됩니다.)

하지만, comment repository는 구현이 되지 않았고, article 부분도 Create, Update, Delete 부분이 구현되지 않았습니다.

따라서 여러분들은 주어진 코드를 참고하여 나머지 부분을 완성 시켜주시면 됩니다.
(물론 100% 똑같이 만들 필요는 없으며, 필요에 따라 모든 코드를 처음부터 다시 작성하셔도 됩니다.
뿐만 아니라, dio 말고 http 라이브러리를 사용하셔도 무방합니다.)

API의 상세 스펙은 [RealWorld Endpoints](https://realworld-docs.netlify.app/docs/specs/backend-specs/endpoints) 를 참고하여 작성해주세요.
