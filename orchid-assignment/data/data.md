# Data Folder

This `data/` folder is included to ensure that all team members use the same file structure when working on the project.

No dataset files should be uploaded to GitHub. This includes raw, intermediate, processed, or exported data files such as:

- `.csv`
- `.xlsx`
- `.xls`
- `.rds`
- `.RDS`

The dataset files are ignored through `.gitignore` because they may be large, private, or only meant for internal project use.

## Folder Structure

```text
data/
├── raw/        # Original dataset files
├── interim/    # Temporary or cleaned working files
└── processed/  # Final processed datasets used for analysis
```