<h1 align="center">combineROI</h1>

<p align="center">
  Combines two ROI datasets into one by copying all ROI NIfTI files from both inputs into a single ROI folder, renaming duplicates.
</p>

<p align="center">
  <a href="https://github.com/brainlife/abcd-spec"><img src="https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg" alt="ABCD Spec v1.1"></a>
  <a href="https://doi.org/10.25663/brainlife.app.313"><img src="https://img.shields.io/badge/Brainlife-brainlife.app.313-blue.svg" alt="Run on brainlife.io"></a>
</p>

## At a glance

<!-- brainlife-app:begin (generated from the App manifest; edit the manifest, not this block) -->

> **Combines two ROI datasets into one by copying all ROI NIfTI files from both inputs into a single ROI folder, renaming duplicates.**

This app will combine two ROI datatype datasets into one ROI datatype dataset. If, for example, there are 3 rois in the first ROI dataset and 2 rois in the second ROI dataset, the output ROI data set will contain 5 rois. NOTE: This app can be used to extract one roi from an ROI dataset. If you enter the same roi in the roi1 and roi2 fields, the resulting ROI will simply be that roi.

| | |
|---|---|
| **Inputs** | `neuro/rois` ×2 |
| **Outputs** | `neuro/rois` |
| **Resources** | 1 CPUs |
| **Run it** | [doi.org/10.25663/brainlife.app.313](https://doi.org/10.25663/brainlife.app.313) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `roi1` | `neuro/rois` | yes | First ROI dataset (folder of roi NIfTI files). Must be in the same space as roi2; the App does not check alignment. |
| `roi2` | `neuro/rois` | yes | Second ROI dataset; files whose names already exist in roi1 are copied with a -2 suffix. Must be in the same space as roi1. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `output` | `neuro/rois` | ROI dataset whose rois folder contains every ROI of both inputs. |

<!-- brainlife-app:end -->

## Running the App

### On brainlife.io

Open the App at [doi.org/10.25663/brainlife.app.313](https://doi.org/10.25663/brainlife.app.313), choose `neuro/rois`, `neuro/rois` from your project and press **Execute**. The results are saved to your project as `neuro/rois`.

### Locally

You need [`jq`](https://jqlang.github.io/jq/).

1. Clone this repository.
2. Create `config.json` with the paths to your inputs and the parameters:

   ```json
   {
       "rois1": "/path/to/roi1/rois1",
       "rois2": "/path/to/roi2/rois2"
   }
   ```

3. Run `./main`.

## app-combineROI

This app will combine multiple ROI datatypes into one ROI file. The input data are ROI brainlife datatypes (two or more) and the output data is one ROI brainlife datatype. The output ROI will contain all of the roi.nii.gz files that were contained within each of the input ROI brainlife datatypes.

NOTE: The rois supplied MUST BE IN ALIGNMENT with one another -- they must
be in the same space. If the rois to be combined are not in alignment with
one another, then the output of this app will be UNUSABLE
(even though the app will not fail to complete).

If, for example, the the first input ROI has 2 rois inside of it and the second input ROI has 3 rois 
inside of it, then the output will be an ROI dataset with 5 rois inside of it.

## Citing

If you use this App, please cite it, the software it builds on and brainlife.io:

- combineROI. brainlife.io App. [doi:10.25663/brainlife.app.313](https://doi.org/10.25663/brainlife.app.313)
- Hayashi S, Caron BA, Heinsfeld AS, et al. brainlife.io: a decentralized and open-source cloud platform to support neuroscience research. *Nature Methods* 21:809–813 (2024). [doi:10.1038/s41592-024-02237-2](https://doi.org/10.1038/s41592-024-02237-2)
- Avesani P, McPherson B, Hayashi S, et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. *Scientific Data* 6:69 (2019). [doi:10.1038/s41597-019-0073-y](https://doi.org/10.1038/s41597-019-0073-y)

## Authors

- Sophia Vinci-Booher

**Contributor**

- Soichi Hayashi

**Project director**

- Franco Pestilli

## Funding

[![Wellcome-226486/Z/22/Z](https://img.shields.io/badge/Wellcome-226486%2FZ%2F22%2FZ-purple.svg)](https://wellcome.org/)
[![NIH-NINDS-U24NS140384](https://img.shields.io/badge/NIH_NINDS-U24NS140384-green.svg)](https://reporter.nih.gov/project-details/11261037)
[![NIH-NINDS-UM1NS132207](https://img.shields.io/badge/NIH_NINDS-UM1NS132207-green.svg)](https://reporter.nih.gov/project-details/11411328)
[![NIH-NIBIB-R01EB029272](https://img.shields.io/badge/NIH_NIBIB-R01EB029272-green.svg)](https://reporter.nih.gov/project-details/10262925)
[![NIH-NIBIB-R01EB030896](https://img.shields.io/badge/NIH_NIBIB-R01EB030896-green.svg)](https://reporter.nih.gov/project-details/10428625)
[![NIH-NIMH-R01MH126699](https://img.shields.io/badge/NIH_NIMH-R01MH126699-green.svg)](https://reporter.nih.gov/project-details/10460628)
[![NIH-NIDCD-R01DC020088](https://img.shields.io/badge/NIH_NIDCD-R01DC020088-green.svg)](https://reporter.nih.gov/project-details/11140284)
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-2203524](https://img.shields.io/badge/NSF_BCS-2203524-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2203524)
[![NSF-IIS-1636893](https://img.shields.io/badge/NSF_IIS-1636893-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1636893)
[![NSF-OAC-2148729](https://img.shields.io/badge/NSF_OAC-2148729-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148729)
[![NSF-IIS-1912270](https://img.shields.io/badge/NSF_IIS-1912270-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1912270)
[![NSF-IIS-2148700](https://img.shields.io/badge/NSF_IIS-2148700-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148700)
[![NSF-OAC-1916518](https://img.shields.io/badge/NSF_OAC-1916518-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1916518)

<sub>brainlife.io, which runs this App, is publicly funded by Wellcome, the U.S. National Institutes of Health and the U.S. National Science Foundation; acknowledging that support helps keep it running.</sub>
