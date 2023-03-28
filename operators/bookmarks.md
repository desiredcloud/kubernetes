##### Kubernetes Operator Development Bookmarks

- Operators:
  - [CNCF Operator White Paper](https://github.com/cncf/tag-app-delivery/blob/eece8f7307f2970f46f100f51932db106db46968/operator-wg/whitepaper/Operator-WhitePaper_v1-0.md)
- Operator Pattern:
  - [Extending Kubernetes - Operator Pattern](https://kubernetes.io/docs/concepts/extend-kubernetes/operator/)
- [kubebuilder-declarative-pattern](https://github.com/kubernetes-sigs/kubebuilder-declarative-pattern)
- [Markers](https://master.book.kubebuilder.io/reference/markers.html)
  - Example: `// +kubebuilder:validation:Optional`
- Kubebuilder Plugins:
  - [ref-1](https://dev4devs.com/2022/10/24/amazing-new-plugins-that-can-help-you-a-lot-develop-your-operators-built-for-kubebuilder-in-the-google-summer-code-program-2022-by-the-students/)
- [Multi-Group](https://kubebuilder.io/migration/multi-group.html)
  - Example: `cache.desiredcloud.com`, `config.desiredcloud.com`, cache and config are 2 different groups in same operator
- Testing Kubernetes Controllers
  - [ref1](https://superorbital.io/journal/testing-production-controllers/)
- CRD:
  - [Extend the Kubernetes API with CustomResourceDefinitions](https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/)
  - [Custom Resources](https://kubernetes.io/docs/concepts/extend-kubernetes/api-extension/custom-resources/)
- CRD Immutability:
  - [Enforce CRD Immutability with CEL Transition Rules](https://kubernetes.io/blog/2022/09/29/enforce-immutability-using-cel/)
  - [Recipe for Singleton](https://github.com/kubernetes-sigs/kubebuilder/issues/1074)
- Kubernetes API Overview
  - [1.26](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.26/)
- Sig Architecture:
  - [API Convnetions](https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md)

---
#### YouTube
- [Best Practices on writing a Kubernetes Operator](https://www.youtube.com/watch?v=r5HzbpHDxK0)

