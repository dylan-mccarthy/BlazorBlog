# BlazorBlog

This repository contains the source code for a blog site written in Blazor WebAssembly.

## Running the Application in Azure Static Web Apps

Azure Static Web Apps is a service that automatically builds and deploys full stack web apps from a GitHub repository.

### Prerequisites

- An Azure account
- A GitHub account

### Steps

1. **Fork this repository**

   Fork the `BlazorBlog` repository to your own GitHub account.

2. **Create a new Static Web App resource**

   In the Azure portal, create a new Static Web App resource. During creation, connect it to your GitHub account and select the repository you just forked.

3. **Configure build settings**

   During the creation of the Static Web App resource, you'll be asked to provide information related to your application. For a Blazor WebAssembly application, you can use the following configuration:

   - App location: `/`
   - Api location: `api`
   - App artifact location: `wwwroot`

4. **Review and create**

   Review your settings and create the resource. Azure will now build and deploy your application.

5. **Accessing the Application**

   Once the deployment is complete, you can navigate to the URL provided by Azure to view your deployed application.

For more information about Azure Static Web Apps, you can read the [official documentation](https://docs.microsoft.com/azure/static-web-apps/).
