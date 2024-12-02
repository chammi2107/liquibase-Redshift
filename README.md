# Liquibase Update for Redshift Workflow
This workflow automates the process of updating a Redshift database using Liquibase. It dynamically creates a Liquibase properties file based on the environment (dev, stg, or prod) and executes the Liquibase update command with the specified changelog file.

# Workflow Overview
Inputs:

**changelog_file_path** : Path to the Liquibase changelog file (default: redshift/stg/install).

**changelog_file** : Name of the Liquibase changelog file (default: install_changelog.sql).

**environment** : Deployment environment (dev, stg, prod) (default: stg).

**schema_name**: Schema name for Liquibase updates (default: install).

<img width="560" alt="{43585F8B-D3FE-417C-8DF6-0E11E25DA492}" src="https://github.com/user-attachments/assets/ce902493-2344-45a2-8d6f-8f1398275bad">




**Secrets Configuration**

Add the following secrets to your GitHub repository:

**DEV_REDSHIFT_ENDPOINT**  **DEV_REDSHIFT_USERNAME** **DEV_REDSHIFT_PASSWORD**

**STG_REDSHIFT_ENDPOINT** **STG_REDSHIFT_USERNAME** **STG_REDSHIFT_PASSWORD**

**PROD_REDSHIFT_ENDPOINT** **PROD_REDSHIFT_USERNAME** **PROD_REDSHIFT_PASSWORD**


**How to Use**

Trigger the workflow manually via the GitHub Actions UI.

Provide the necessary inputs (or use the defaults):

changelog_file_path changelog_file environment schema_name

The workflow will automatically generate the liquibase.properties file.

Use the appropriate environment-specific secrets for connecting to the Redshift database.

Apply the database updates defined in the changelog file.

Example Trigger

**To trigger the workflow manually with specific inputs:**

Go to the Actions tab in your GitHub repository.

Select the branch for example Liquibase Update for Redshift workflow.

Click Run Workflow and provide the necessary inputs.

Logs and Debugging

Each step outputs relevant logs to help you debug issues.

The liquibase.properties file configuration is displayed (excluding sensitive values like passwords).
