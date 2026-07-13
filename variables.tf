variable "student_name" {
  description = "Your name, lowercase, no spaces (keeps your resources unique)"
  type        = string
  default     = "hussein-v2"

  validation {
    condition     = can(regex("^[a-z0-9-]+$", var.student_name))
    error_message = "The student_name variable must be lowercase, alphanumeric, or contain hyphens (no spaces allowed)."
  }
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "k8s_version" {
  description = "Kubernetes version. Use one in EKS STANDARD support to avoid the 6x extended-support fee. Check: https://docs.aws.amazon.com/eks/latest/userguide/kubernetes-versions.html"
  type        = string
  default     = "1.33"
}

# --- Node Count Knobs ---
variable "desired_nodes" {
  description = "The number of worker nodes to start with"
  type        = number
  default     = 2
}

variable "min_nodes" {
  description = "The minimum number of worker nodes the cluster can scale down to"
  type        = number
  default     = 1
}

variable "max_nodes" {
  description = "The maximum number of worker nodes the cluster can scale up to"
  type        = number
  default     = 3
}
