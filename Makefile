
NAME=nodeable

# Manifested name.
MANIFEST=com.example.$(NAME)

# Name of the local repository - used for testing.
REPOSITORY=$(NAME)-repository

all:
	flatpak-builder build $(MANIFEST).json --force-clean

clean:
	rm -rf dist
	rm -rf build
	rm -rf build-dist
	rm -rf .flatpak-builder

run:
	flatpak-builder --run build $(MANIFEST).json nodeable.sh

install:
	flatpak --user remote-add --if-not-exists --no-gpg-verify $(REPOSITORY) repo
	flatpak --user install $(REPOSITORY) $(MANIFEST)

run-installed:
	flatpak run $(MANIFEST)

bundle:
	flatpak --user remote-add --if-not-exists --no-gpg-verify $(REPOSITORY) repo
	flatpak build-bundle repo $(NAME).flatpak $(MANIFEST)
