output "docker_vpc_output" {
    value = "${alicloud_cr_repo.repo.domain_list}"
}