BASE_HREF = '/pulse_board/'
GITHUB_REPO = https://github.com/RanveerSingh1997/pulse_board.git
BUILD_VERSION := $(shell grep 'version:' pubspec.yaml | awk '{print $$2}')

deploy-web:
	flutter clean

	flutter pub get

	flutter build web --base-href $(BASE_HREF) --release

	cd build/web && \
	git init && \
	git add . && \
	git commit -m "Deploy Version $(BUILD_VERSION)" && \
	git branch -M gh-pages && \
	git remote add origin $(GITHUB_REPO) && \
	git config --global http.postBuffer 524288000 &&\
	git push origin -u --force gh-pages

	cd ../..

.PHONY: deploy-web