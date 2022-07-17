#resource "aws_lakeformation_lf_tag" "example" {
#  key    = "right"
#  values = ["abbey", "village", "luffield", "woodcote", "copse", "chapel", "stowe", "club"]
#}
#
#resource "aws_lakeformation_resource_lf_tags" "example" {
#  database {
#    name = aws_glue_catalog_database.example.name
#  }
#
#  lf_tag {
#    key   = aws_lakeformation_lf_tag.example.key
#    value = "stowe"
##table {
#        database_name
#        name
#        wildcard
#}
##table_with_columns {
# 
#          column_names
#          database_name
#          name
#          wildcard
#          excluded_column_names                  
#}
#  }
#}
