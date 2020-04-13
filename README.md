[![Abcdspec-compliant](https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg)](https://github.com/brain-life/abcd-spec)
[![Run on Brainlife.io](https://img.shields.io/badge/Brainlife-bl.app.219-blue.svg)](https://doi.org/10.25663/brainlife.app.313)

### Author
- Sophia Vinci-Booher (svincibo@indiana.edu)

### Contributor
- Soichi Hayashi (hayashis@iu.edu)

### Project director
- Franco Pestilli (franpest@indiana.edu)

# app-mergeROI

Merge multiple ROI datatypes into one ROI file. 

### Funding 
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-1636893](https://img.shields.io/badge/NSF_BCS-1636893-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1636893)
[![NIH-T32-HD007475](https://img.shields.io/badge/NIH_T32-HD007475-blue.svg)](https://www.nichd.nih.gov/grants-contracts/training-careers/extramural/institutional)

### On Brainlife.io

You can submit this App online at [https://doi.org/10.25663/brainlife.app.313](https://doi.org/10.25663/brainlife.app.313) via the "Execute" tab.

### Running Locally (on your machine)

1. git clone this repo.
2. Inside the cloned directory, create `config.json` with something like the following content with paths to your input files.

```json
{
"rois1": "testdata/roi1/",
"rois2": "testdata/roi2/"
}
```

3. Launch the App by executing `main`

```bash
./main
```

### Sample Datasets

If you don't have your own input file, you can download sample datasets from Brainlife.io, or you can use [Brainlife CLI](https://github.com/brain-life/cli).


## Output

All output files will be generated under the current working directory (pwd). The main output of this App is the ROI folder that contains .nii.gz files for each ROI in the input folders. This file contains following object.

### Dependencies

None.
