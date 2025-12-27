input_file := "./src/default.yaml"
output_dir := "../.output/"
output_file := "jakub-sarnowski-cv"
cmd := "uv run rendercv render -nomd -nohtml -nopng -typ " + output_dir + output_file + ".typ" + " -pdf " + output_dir + output_file + ".pdf"

default: build

build:
    {{ cmd }} {{ input_file }}

dev:
    {{ cmd }} -w {{ input_file }}
