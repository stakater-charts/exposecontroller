{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "exposecontroller.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "exposecontroller.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "exposecontroller.labels.selector" -}}
app: {{ template "exposecontroller.name" . }}
group: {{ .Values.exposeController.labels.group }}
provider: {{ .Values.exposeController.labels.provider }}
{{- end -}}

{{- define "exposecontroller.labels.stakater" -}}
{{ template "exposecontroller.labels.selector" . }}
version: "{{ .Values.exposeController.labels.version }}"
{{- end -}}

{{- define "exposecontroller.labels.chart" -}}
chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
release: {{ .Release.Name | quote }}
heritage: {{ .Release.Service | quote }}
{{- end -}}
