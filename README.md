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
- Create slack incomming webhook url
- Add in secrets
  - `GH_TOKEN_USER` for user
  - `GH_TOKEN_ORG` for organization
  - `SLACK_WEBHOOK_URL` for slack webhook url
  - <img width="785" alt="image" src="https://github.com/yorifuji/billing-actions-monitor/assets/583917/49a2a30c-fce3-419f-86cb-234724a3bef4">
