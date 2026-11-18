.PHONY: all

all:
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "Date et heure : $$(date '+%Y-%m-%d %H:%M:%S')" >> README.md
	@echo "" >> README.md
	@echo "Nombre de lignes de code : $$(wc -l < guessinggame.sh)" >> README.md
