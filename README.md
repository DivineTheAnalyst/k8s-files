# Kubernetes Manifests Repository

Welcome to the **k8s-files** repository! This repository contains various Kubernetes manifest files covering different major Kubernetes objects. These files serve as examples and references for deploying and managing applications, services, and configurations in Kubernetes clusters.

## Repository Structure
The repository consists of 11 folders, each containing multiple YAML manifest files related to specific Kubernetes components. Below is an overview of the major Kubernetes objects included:

### 1. **Deployments**
   - Manifests for deploying applications using Kubernetes Deployments.
   - Defines replica count, pod templates, rolling updates, and strategies.

### 2. **Services**
   - Contains YAML files for exposing applications using ClusterIP, NodePort, and LoadBalancer services.

### 3. **Ingress**
   - Includes ingress resource definitions for routing external traffic to services within the cluster.

### 4. **ConfigMaps**
   - Configuration files for storing non-sensitive application configurations.

### 5. **Secrets**
   - Encrypted storage of sensitive data like passwords and API keys.

### 6. **PersistentVolumes (PV) & PersistentVolumeClaims (PVC)**
   - Manifests for persistent storage in Kubernetes.

### 7. **StatefulSets**
   - Kubernetes StatefulSets for managing stateful applications with stable storage and network identities.

### 8. **DaemonSets**
   - YAML files for running pods on all (or some) nodes in a cluster.

### 9. **Role-Based Access Control (RBAC)**
   - Configurations for user permissions, Roles, RoleBindings, ClusterRoles, and ClusterRoleBindings.

### 10. **Custom Resource Definitions (CRDs)**
   - Example CRDs and custom controllers for extending Kubernetes functionalities.

## Usage
To apply any manifest to your Kubernetes cluster, use the following command:

```sh
kubectl apply -f <path-to-manifest>
```

To verify resources after deployment:

```sh
kubectl get all
```

For troubleshooting:

```sh
kubectl describe <resource-type> <resource-name>
kubectl logs <pod-name>
```

## Contributing
Contributions are welcome! Feel free to submit pull requests or raise issues to improve the repository.



