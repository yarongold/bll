resource "aws_s3_bucket" "app_storing_bucket" {
  bucket = var.bucketName
}


data "archive_file" "app_file" {
  type        = var.zipFile
  source_dir  = var.sorceDirectory
  output_path = "${path.module}/temp/out.zip"
}

resource "aws_s3_object" "app_item" {
#  bucket = var.bucketName #aws_s3_bucket.app_storing_bucket.bucket
  bucket = aws_s3_bucket.app_storing_bucket.bucket
  key    = var.codeObjectkey
  source = data.archive_file.app_file.output_path
}
