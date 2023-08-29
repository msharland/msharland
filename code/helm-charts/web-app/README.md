
my-chart/
- charts/
- templates/
- values.yaml
- Chart.yaml

charts/: This directory can contain sub-charts that your main chart depends on.  
templates/: This directory contains Kubernetes manifest templates that define the resources to be deployed.  
values.yaml: This file contains default values for customizable parameters in your templates.  
Chart.yaml: This file contains metadata about the chart, such as its name, version, description, and more.  

```
helm package webapp-chart  
helm install webapp-release ./webapp-chart-0.1.0.tgz  
```
