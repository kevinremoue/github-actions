provider "aws" {

}

resource "aws_ecr_repository" "kevinremoue" {
    name = "kevinremoue"
    image_tag_mutability = "MUTABLE"
}