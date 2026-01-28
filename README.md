# Cru App ECS Template
This is a template for a basic Cru Application using the AWS ECS service. It includes the necessary configuration to build
and deploy the application to AWS ECS using the [aws/ecs/app](https://github.com/CruGlobal/cru-terraform-modules/blob/main/aws/ecs/app/README.md) Terraform module.

## Bootstrap new Cru App
You can bootstrap a new GitHub repository and Cru Application using the [Add Cru Application](https://github.com/CruGlobal/cru-terraform/actions/workflows/cru-application.yml) GitHub workflow.
Click the `Run workflow` button and follow the prompts. This will create a Terraform Pull Request that when applied,
will create a new GitHub Repository using this template. Subsequent application environments (`production` or `staging`)
can be created using the [Add Cru App Environment](https://github.com/CruGlobal/cru-terraform/actions/workflows/cru-application-env.yml) GitHub workflow.

## Usage
The template application uses Ruby and Docker to build and deploy the application. You'll want to initialize a new rails
application and commit the changes to the repository. Alternatively, you can change to another language or framework.
The Template assumes Rails out of the box.
