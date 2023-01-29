


- The general style of the Kubernetes API is RESTful - clients create, update, delete, or retrieve a description of an object via the standard HTTP verbs (POST, PUT, DELETE, and GET) - and those APIs preferentially accept and return JSON.

- Kind: name of a particular object schema ("Pod", "Deployment", etc)
  - Kinds are `CamelCase` and singular
- Resource: 
  - Collections: a list of same resources
  - Elements: an individual resource, addressable via a URL
  - Resource collection should be all lowercase and plural
- API Group: a set of resources that are exposed together
  - Group names must be lower-case and a valid [DNS subdomains](https://github.com/kubernetes/design-proposals-archive/blob/main/architecture/identifiers.md#definitions)#subdomain
    - One or more lowercase rfc1035/rfc1123 labels separated by '.' with a maximum length of 253 characters.

- Kind "Pod" is exposed as a "pods" resource. 
  - "pod status" is a separate resource then "pods"
  - /api/v1/namespaces/{namespace}/pods/{name}
  - /api/v1/namespaces/{namespace}/pods/{name}/status
  - /api/v1/namespaces/{namespace}/pods/{name}/portforward
  - /api/v1/namespaces/{namespace}/pods/{name}/proxy
  - /api/v1/namespaces/{namespace}/pods/{name}/proxy/{path}
  - /api/v1/namespaces/{namespace}/pods/{name}/log

- Resources are bound together in `API Groups`
  - Each group may have one or more versions 
  - Each version within the group has one or more resources
  - Group name should be subdomain of your group or organizations, such as "widget.mycompany.com"
  - 