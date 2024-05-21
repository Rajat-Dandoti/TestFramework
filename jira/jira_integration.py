from jira import JIRA

jira = JIRA(server='https://your-domain.atlassian.net', basic_auth=('email', 'api_token'))

def create_issue(summary, description):
    issue_dict = {
        'project': {'key': 'PROJ'},
        'summary': summary,
        'description': description,
        'issuetype': {'name': 'Bug'},
    }
    new_issue = jira.create_issue(fields=issue_dict)
    return new_issue

def main():
    summary = 'Test Failure: Test XYZ'
    description = 'Test XYZ failed due to an unexpected error.'
    issue = create_issue(summary, description)
    print(f"Issue {issue.key} created.")

if __name__ == "__main__":
    main()
