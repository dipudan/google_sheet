#!/bin/bash

# Read the environment variable
ENV_VAR_NAME='{
  "type": "service_account",
  "project_id": "tutorial-433711",
  "private_key_id": "94c9ec60b736d504e02f5df2fe1ea2e36be23012",
  "private_key": "-----BEGIN PRIVATE KEY-----\\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC6mdbCm4eBTXHc\\n+fB/KvR85VNhelIqSXCMxfpUExgYdnKbFg/BtveQMzYp3mReQbdky4XzKI1qBtGh\\n2e46pw7kMmerrlr/oJnZ9t0pB/A6Ryw+Vmz862ZS3xL3RLnnLj+MnwmnameINyCF\\nnI10ex2ExcP0FZynGDkpcyqJuq07qn+4Eaqf84lLdu/VFfhS+HrLgQQXtnlNYRNv\\nLD4hNlzuQnHPxKFNe7PFSaQq2hdm/t95jwNioN3R3QjfX6Xi7XJ1WWkxvL8W3izH\\nMbCpm0TFZFZxjrozjusFhcS3PIfrCKshYw/YAeb0SuQJGdyLVr4/hXmxY4RD9U5C\\nu/DiHbfDAgMBAAECggEALPj0xJRddTFoFtz6NHvyzsMqdFzZvq1SfesdKPQtI4Aw\\noOYRSBvD0LI3BKI/yGPIQne2weLtKjeYgIyYmPQ4Z5EqYTs1XVSkn96acNAj+re6\\nlw+XVuGZGLIAzS14LJp94HNYDUxcxXybzvfrM76UX7KWRpaK2c7BwBaskuM16yIC\\n82I4Q0YpxlkY4Vf5k9necshxa5lwTJrjIqU3af2sXWN5JBoFDQV8DcY12/cp0egD\\nS4xx7ixkYFOij1mJBh7HIg3HwYJuP64b8i09wveAFsy8oWo78VbUI0GfN0WxLx3e\\nrH7P23lJMODpTegkVzp6a507D8KMYRagAX3tbKK9qQKBgQD+Va/eGxVOFXtX0zH1\\nb6FHkG1uJRnNNYSp/dLjyMI+PXBccjIYJsZsqFkgoEO5AAyZig5/9T9vlNGAphV2\\nngN6s8dWQVJFgt3bDiNKh3+5XldPs1JPHhGjdYNEa+yiaFkrfyrHTQ6U76Zd+p/y\\nXh/fr4oVkOWWGPKBlOjFc7ZwVQKBgQC70p4IRMauRufZYccMqgHDwpcsJLZQfJ75\\nDNsYIkUcpcUHF+zsY9nXTvO6mI7aFOfpyTD5gZo+6qlMoOM6P1NUZt+6XAxHqCAX\\noUbNeEuyVBc67eepot9cTpVVvA3XySOtsJ7fRPal/MObY4bcVEs/g+FqXfUq+AWF\\nWOGxbVS/twKBgQCqxRYE5+JyP3JGEgRla8K6rnsLjdW5N8oP6eIEF/R0ngQnznVc\\nSgzJQHA3u+Q8/492OIBr4lvpq97PprSapJZpePTLMajwC2KzhtajYD+eU34Egb8u\\naF4nhuvQsTZ+Bdp5njU3BMJZtl/akkF7F0AHjXIF8Ph2w+FwqG9yxLMm0QKBgGVg\\nJ9YUsRwtv0Qwp0wpkqxDom68Hf9RVEjebH8ZOC5fNvo+Kq3osxKoVZsYbro84HPq\\nGNoC3usoo1pt2Fd/CI4cvJMMzb/7ed7nOJz8WfcVtjgjYo/IDkD3VVkiGGKo+O3t\\nz8J4qZwr0rRTQt43TSoqF4fe0M5xciFoOOEYPs7/AoGBAKrLN/wPB4jmP3N03qr6\\niopndPN4qGyAjgYQgq1OAS0OW0qLqsRAFOGWm2KC+UlNoXcv/ncW6+tJl/rYqmqZ\\noPrpYU6cCEtoKuVIXsmD5P15bpuI4N7WzmZycaUryKlE/+q7Er13rm5be/03Up9j\\nvei2WrrzYj/PYuWIvdx+l5At\\n-----END PRIVATE KEY-----\\n",
  "client_email": "test-593@tutorial-433711.iam.gserviceaccount.com",
  "client_id": "106831923919342969652",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/test-593%40tutorial-433711.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}'

# Check if the environment variable is set
if [ -z "$ENV_VAR_NAME" ]; then
  echo "Environment variable $ENV_VAR_NAME is not set."
  exit 1
fi
JSON_FILE="output.json"
echo "${ENV_VAR_NAME}" > "$JSON_FILE"
echo "$(<output.json )"

