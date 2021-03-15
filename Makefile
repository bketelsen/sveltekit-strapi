all: world person

PERSON_SOURCES = $(wildcard data/person/*.yaml)
PERSON_SVXS = $(patsubst %.yaml,%.svx, $(notdir $(PERSON_SOURCES) ))
PERSONDIR = data/person/
PERSONTARGET = src/routes/person/

world:
	@echo Testing world/*.yaml	
	@cue vet data/world/*.yaml schema/types.cue -d '#World'

person:
	@echo Testing person/*.yaml
	@cue vet data/person/*.yaml schema/types.cue -d '#Person'

.PHONY: build



build: $(PERSON_SVXS)

%.svx: $(PERSONDIR)%.yaml
	cp $< $(PERSONTARGET)$(basename $(notdir $<)).svx

clean:
	rm -rf src/**/*.yaml