# GIS workflow generation

1. Run `run.sh`.
2. It will create workflows (with figures) in separate folders for all questions.

To update the tool descriptions and taxonomy, replace the `GISTaxonomy.rdf`, `GISTaxonomy_fl.rdf`, `ToolDescription_ct.json`, and `ToolDescription_ct_fl.json` files with newly generated ones.

Here's a short explanation of what each file/directory is here for:

- `APE-0.9.1.jar`: APE jar. See [its repository](https://github.com/sanctuuary/APE)
- `run.sh`: Bash script for easily running all synthesis.
- `clean.sh` Bash script for easily removing all output produced by APE.
- `evaluation/evaluation.csv`: A table with synthesized workflows used in the paper, and evaluations of them using our classification scheme.
- `evaluation/diagrams/*.png`: Visualizations of the workflows. (The ID's in `evaluation/evaluation.csv` correspond to the filenames.)
- `GISTaxonomy.rdf`: Taxonomy used for the CCDT ontology.
- `GISTaxonomy_fl.rdf`: Taxonomy used for the state-of-the-art (SOTA) ontology.
- `ToolDescription_ct.json`: Tool descriptions using the CCDT ontology.
- `ToolDescription_ct_fl.json`: Tool descriptions using the state-of-the-art (SOTA) ontology.
- `q[1-5]_(sota|full)(_constrained)?`: Directories with APE configuration files for each question and ontology. The output files are also placed here by APE.