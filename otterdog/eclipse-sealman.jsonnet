local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('technology.sealman', 'eclipse-sealman') {
  settings+: {
    description: "",
    name: "Eclipse SEALMAN",
    packages_containers_internal: false,
    packages_containers_public: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "SEALMAN project website",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
} + {
  # Adding Repository for initial commit
  _repositories+:: [
    orgs.newRepo('starterpackage'){
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "SEALMAN Starter Package",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
  ],
}
 + {
  _repositories+:: [
    orgs.newRepo('code-playground') {
      description: 'Playground repository for Welotec application (daemon + CLI). Eclipse-hosted; ECA + Signed-off-by required.',
      homepage: '',
      allow_merge_commit: false,
      allow_rebase_merge: true,
      allow_squash_merge: true,
      delete_branch_on_merge: true,
      has_issues: true,
      has_projects: false,
      has_wiki: false,
      has_discussions: true,
      is_template: false,

      web_commit_signoff_required: true,
      secret_scanning: "enabled",
      secret_scanning_push_protection: "enabled",

      workflows+: {
        enabled: false
      },

      branch_protection_rules: [
        {
          pattern: "main",
          allows_deletions: false,
          allows_force_pushes: false,
          blocks_creations: false,
          requires_pull_request: true,
          required_approving_review_count: 1,
          requires_code_owner_reviews: true,
          requires_linear_history: true,
          is_admin_enforced: true,
        },
      ],
    },
  ],
} + {
  _repositories+:: [
    orgs.newRepo('sealman-ems'){
      description: "SEALMAN Element Management System (EMS)",

      has_discussions: false,
      has_issues: true,
      has_projects: false,
      has_wiki: false,

      default_branch: "main",

      allow_rebase_merge: false,
      allow_merge_commit: true,

      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",

      dependabot_alerts_enabled: false,
      dependabot_security_updates_enabled: false,
    },
  ],
} + {
  _repositories+:: [
    orgs.newRepo('sealman-os-base') {
      description: 'Sealman Operating System base',
      homepage: '',
      allow_merge_commit: false,
      allow_rebase_merge: true,
      allow_squash_merge: true,
      delete_branch_on_merge: true,
      has_issues: true,
      has_projects: false,
      has_wiki: false,
      has_discussions: true,
      is_template: false,

      web_commit_signoff_required: true,
      secret_scanning: "enabled",
      secret_scanning_push_protection: "enabled",

      workflows+: {
        enabled: false
      },

      branch_protection_rules: [
        {
          pattern: "main",
          allows_deletions: false,
          allows_force_pushes: false,
          blocks_creations: false,
          requires_pull_request: true,
          required_approving_review_count: 1,
          requires_code_owner_reviews: true,
          requires_linear_history: true,
          is_admin_enforced: true,
        },
      ],
    },
  ],
} + {
  _repositories+:: [
    orgs.newRepo('sealman-os-conman') {
      description: 'Sealman Operating System configuration Management soulution',
      homepage: '',
      allow_merge_commit: false,
      allow_rebase_merge: true,
      allow_squash_merge: true,
      delete_branch_on_merge: true,
      has_issues: true,
      has_projects: false,
      has_wiki: false,
      has_discussions: true,
      is_template: false,

      web_commit_signoff_required: true,
      secret_scanning: "enabled",
      secret_scanning_push_protection: "enabled",

      workflows+: {
        enabled: false
      },

      branch_protection_rules: [
        {
          pattern: "main",
          allows_deletions: false,
          allows_force_pushes: false,
          blocks_creations: false,
          requires_pull_request: true,
          required_approving_review_count: 1,
          requires_code_owner_reviews: true,
          requires_linear_history: true,
          is_admin_enforced: true,
        },
      ],
    },
  ],
}

