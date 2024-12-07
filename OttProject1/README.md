내가 생각하는 현재 리포지토리의 브런치 내용 안전하게 받는방법!

폴더를 새로 만들고 마우스 우클릭으로 git bash를 연다

다음 코드를 실행한다

git init

git config user.name 이름

git config user.email 이메일

git remote add 원격저장소구분별칭  리포지토리 주소

git pull 원격저장소구분별칭 받고자하는브런치이름
