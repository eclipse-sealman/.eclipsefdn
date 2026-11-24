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
    orgs.newRepo('.github') {
    },
    orgs.newRepo('sealman-edge-config-api') {
      description: "Sealman EdgeConfig-API",
      has_discussions: true,
      has_projects: false,
      has_wiki: false,
      homepage: "",
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          is_admin_enforced: true,
          required_approving_review_count: 1,
          requires_code_owner_reviews: true,
          requires_linear_history: true,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('sealman-edge-config-app') {
      description: "Sealman EdgeConfig-APP",
      has_discussions: true,
      has_projects: false,
      has_wiki: false,
      homepage: "",
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          is_admin_enforced: true,
          required_approving_review_count: 1,
          requires_code_owner_reviews: true,
          requires_linear_history: true,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('sealman-ems') {
      allow_merge_commit: true,
      allow_rebase_merge: false,
      default_branch: "release/0.x",
      dependabot_alerts_enabled: false,
      description: "SEALMAN Element Management System (EMS)",
      has_projects: false,
      has_wiki: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      secrets: [
        orgs.newRepoSecret('DOCKER_HUB_RENOVATE_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('DOCKER_HUB_USERNAME') {
          value: "********",
        },
        orgs.newRepoSecret('RENOVATE_TOKEN') {
          value: "pass:bots/technology.sealman/github.com/renovate-token",
        },
      ],
    },
    orgs.newRepo('sealman-iiot-platform') {
      description: "Sealman IIOT Platform",
      has_discussions: true,
      has_projects: false,
      has_wiki: false,
      homepage: "",
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          is_admin_enforced: true,
          required_approving_review_count: 1,
          requires_code_owner_reviews: true,
          requires_linear_history: true,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('sealman-os-base') {
      description: "Sealman Operating System base",
      has_discussions: true,
      has_projects: false,
      has_wiki: false,
      homepage: "",
      workflows+: {
        enabled: false,
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          is_admin_enforced: true,
          required_approving_review_count: 1,
          requires_code_owner_reviews: true,
          requires_linear_history: true,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('sealman-os-conman') {
      description: "Sealman Operating System configuration Management soulution",
      has_discussions: true,
      has_projects: false,
      has_wiki: false,
      homepage: "",
      workflows+: {
        enabled: false,
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          is_admin_enforced: true,
          required_approving_review_count: 1,
          requires_code_owner_reviews: true,
          requires_linear_history: true,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('starterpackage') {
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
}
