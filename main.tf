resource "alicloud_cr_namespace" "namespace" {
    name = "${var.name}"
    auto_create = false
    default_visibility = "${var.visibility}"
}

resource "alicloud_cr_repo" "repo" {
    namespace = "${alicloud_cr_namespace.namespace.name}"
    name = "${var.name}"
    summary = "This repo contains images of ${var.name} "
    repo_type = "${var.repo_type}"
}
