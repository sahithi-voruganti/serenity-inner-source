# Tenant Manager Service Overview 

This service provides a RESTful endpoint to create, delete, and get info about tenants. When creating a tenant, this service trigggers an Azure Automation runbook which performs the long running operations of creating new infrastructure such as an IoT Hub, Device Provisioning Service, etc and then returns right away with the new tenant ID. The tenant takes a few minutes to become ready as the runbook has to complete. The user can check the readiness of their tenant using the tenant ready REST API. The tenant will be ready once all of the require infrastructure is deployed and the runbook updates table storage indicating so. The delete tenant operation is similar to the create tenant operation as the api triggers a run book which cleans up the deleted tenant's infrastructure.

## APIs
* Create Tenant
* Get Tenant
* Check whether the specified tenant is ready or not
* Delete Tenant

## How to Run Locally

`cd WebService`

`dotnet restore`

`dotnet run`