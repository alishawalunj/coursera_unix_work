title = $(notdir $(shell pwd))
make_date = $(shell date -u "+%D %T")
lines = $(shell cat guessinggame.sh | wc -l)
all:
	@echo "Project Title: $(title)" > README.md
	@echo "Make date: $(make_date)" >> README.md
	@echo "Lines: $(lines)" >> README.md
