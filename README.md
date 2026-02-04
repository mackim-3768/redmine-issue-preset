# Redmine Stencil Plugin

Redmine 이슈 생성 시 트래커(Tracker)별로 미리 정의된 설명(Description) 템플릿을 자동으로 적용해주는 플러그인입니다.

## 기능 (Features)

- **트래커별 템플릿 관리**: 관리자 페이지에서 각 트래커에 대한 기본 설명 문구를 설정할 수 있습니다.
- **자동 적용**: 이슈 생성 페이지에서 트래커를 변경할 때, 해당 트래커의 템플릿이 설명 필드에 자동으로 입력됩니다.
- **안전한 입력**: 설명 필드에 이미 내용이 있는 경우에는 템플릿이 덮어씌워지지 않습니다 (빈 값일 때만 적용).

## 호환성 (Compatibility)

- **Redmine**: 5.1.3 이상
- **Ruby**: 2.7 이상

## 설치 방법 (Installation)

1. Redmine `plugins` 디렉토리로 이동합니다.
   ```bash
   cd /path/to/redmine/plugins
   ```

2. 플러그인을 다운로드합니다. (폴더명은 반드시 `redmine_stencil`이어야 합니다)
   ```bash
   git clone https://github.com/your-repo/redmine_stencil.git
   ```

3. Redmine 루트 디렉토리로 이동하여 의존성을 설치합니다.
   ```bash
   cd ..
   bundle install
   ```

4. 데이터베이스 마이그레이션을 실행합니다.
   ```bash
   bundle exec rake redmine:plugins:migrate NAME=redmine_stencil RAILS_ENV=production
   ```

5. Redmine을 재시작합니다.

## 사용 방법 (Usage)

1. **관리자(Administration) > Stencil 템플릿 관리(Stencil Templates)** 메뉴로 이동합니다.
2. 템플릿을 설정하고 싶은 트래커의 수정(Edit) 버튼을 클릭합니다.
3. 원하는 템플릿 내용을 입력하고 저장합니다.
4. '새 일감 만들기' 페이지에서 해당 트래커를 선택하면 템플릿이 자동으로 적용되는지 확인합니다.

## 라이선스 (License)

MIT License
