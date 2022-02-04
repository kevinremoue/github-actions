provider "aws" {
    region      =    "${{ secrets.AWS_DEFAULT_REGION }}"
    access_key  =    "${{ secrets.AWS_ACCESS_KEY_ID }}"
    secret_key  =    "${{ secrets.AWS_SECRET_ACCESS_KEY }}"

    # assume_role {
    #     role_arn     = "arn:aws:iam::ACCOUNT_ID:role/ROLE_NAME"
    #     session_name = "SESSION_NAME"
    #     external_id  = "EXTERNAL_ID"
    # }
}
