# terraform-vcd-catalog-media

Terraform module which manages catalog-media ressources (.iso files) on VMWare Cloud Director.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.9 |
| <a name="requirement_vcd"></a> [vcd](#requirement\_vcd) | >= 3.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vcd"></a> [vcd](#provider\_vcd) | 3.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vcd_catalog_media.catalog_media](https://registry.terraform.io/providers/vmware/vcd/latest/docs/resources/catalog_media) | resource |
| [vcd_catalog.catalog](https://registry.terraform.io/providers/vmware/vcd/latest/docs/data-sources/catalog) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_catalog_name"></a> [catalog\_name](#input\_catalog\_name) | The name of the catalog where to upload the media file. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Media file name in catalog. | `string` | n/a | yes |
| <a name="input_vdc_org_name"></a> [vdc\_org\_name](#input\_vdc\_org\_name) | The name of the organization to use. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of media file. | `string` | `null` | no |
| <a name="input_media_path"></a> [media\_path](#input\_media\_path) | Absolute or relative path to file to upload. | `string` | `null` | no |
| <a name="input_metadata_entry"></a> [metadata\_entry](#input\_metadata\_entry) | A set of metadata entries to assign. | `list(map(string))` | `[]` | no |
| <a name="input_upload_piece_size"></a> [upload\_piece\_size](#input\_upload\_piece\_size) | Size in MB for splitting upload size. | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the uploaded .iso file. |
<!-- END_TF_DOCS -->

## Examples

```
module "boot_iso" {
  source            = "git::https://github.com/noris-network/terraform-vcd-catalog-media?ref=1.0.0"
  vdc_org_name      = "myORG"
  name              = "debian12.iso"
  description       = "my debian12.iso file"
  catalog_name      = "myCatalog"
  input_media_path  = "./catalog/debian-12.0.0-amd64-netinst.iso"
  upload_piece_size = 100
}
```
