provider "oci" {
  fingerprint      = "4b:c9:75:ad:74:c5:fc:51:19:db:52:d0:70:0c:11:ef"
  private_key_path = "~/.oci/oci_api_key.pem"
  region           = "us-phoenix-1"
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaaro7aox2fclu4urtpgsbacnrmjv46e7n4fw3sc2wbq24l7dzf3kba"
  user_ocid        = "ocid1.user.oc1..aaaaaaaafrfzsvmm6nwpwjor2woc3pejml6l6bhuv2mxqqbj6moj7arck6ua"
}


module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
}


resource "oci_core_vcn" "test_vcn" {
    #Required
    compartment_id = "ocid1.compartment.oc1..aaaaaaaah6ibn4qjy6chh7ilzha53oeeacmrmghdh5ziqhzn2xtgubhxolga"

   
    cidr_block = "11.0.0.0/16"
    display_name = "vcn-appdev-ws"
    
}