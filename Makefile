PROJECTNAME="Make It Editable"

all: prelogue copy archive epilogue

prelogue:
	@echo ""
	@echo ">>> $(PROJECTNAME) build started"
	@echo ""

./build:
	@rm -rf build
	@mkdir -p build

copy: ./build
	@cp background.js ./build
	@cp manifest.json ./build
	@cp script.js ./build
	@cp icon.png ./build

archive: ./build
	@zip make-it-editable.zip -r ./build

epilogue:
	@echo ""
	@echo ">>> $(PROJECTNAME) build has successfully finished"
	@echo ""

.PHONY: prelogue build archive epilogue
