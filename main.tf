provider "aws"{
    region = "us-east-1"
    version = "~>2.46"
}

resource "aws_s3_bucket" "default"{
    bucket = "srikihepzibucket"
    versioning{
        enabled = true
    }
}
#will get output
output "my_s3_bucket_versioning"{
    value = "aws_s3_bucket.default.versioning[0].enabled"
}

resource "aws_iam_user" "my_iam_user"{
    name = "srikanth"
}