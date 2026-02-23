output_dir := "../.output/"
output_file := "jakub-sarnowski-cv"
cmd := "uv run rendercv render -nomd -nohtml -nopng -typ " + output_dir + output_file + ".typ" + " -pdf " + output_dir + output_file + ".pdf"

default: build

build profile="swe":
    {{ cmd }} ./src/{{ profile }}.yaml

dev profile="swe":
    {{ cmd }} ./src/{{ profile }}.yaml
    open ./.output/{{ output_file }}.pdf
    {{ cmd }} -w ./src/{{ profile }}.yaml
