# github-actions-billing-notifier

GitHub Actions to notify actions usage to Slack.

<img width="622" alt="image" src="https://github.com/yorifuji/billing-actions-monitor/assets/583917/3b10d688-7539-432b-b731-0c906e75798a">

# HowTo Use

- Fork this repository
- Create fine grained token to access billing
  - https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-fine-grained-personal-access-token
  - **Read access to plan in User permissions** for user
    - https://docs.github.com/en/rest/billing/billing?apiVersion=2022-11-28#get-github-actions-billing-for-a-user
  - **Read access to organization administration in Organization permissions** for organization
    - https://docs.github.com/en/rest/billing/billing?apiVersion=2022-11-28#get-github-actions-billing-for-an-organization
  - **"Enterprise administration" business permissions (write)** for enterprise
    - https://docs.github.com/en/enterprise-cloud@latest/rest/enterprise-admin/billing?apiVersion=2022-11-28#get-github-actions-billing-for-an-enterprise
- Create slack incomming webhook url
- Add `ACCOUNT_NAME` in variables, set user name, organization name or enterprise name
- Add secrets
  - `GH_TOKEN`
  - `SLACK_WEBHOOK_URL` in secrets
- Click Actions tab, enable workflows
  - <img width="793" alt="image" src="https://github.com/yorifuji/github-actions-billing-notifier/assets/583917/07df77c2-cafb-4821-ac2e-11f0280f37aa">
- Select the workflow you wish to use and enable it
  - <img width="1646" alt="image" src="https://github.com/yorifuji/github-actions-billing-notifier/assets/583917/19a4bb8b-93d7-4aa6-b12b-6bf7df8ba874">
