{{/*
Application name
*/}}
{{- define "demo-app.name" -}}
demo-app
{{- end }}


{{/*
Full application name
*/}}
{{- define "demo-app.fullname" -}}
{{ .Release.Name }}-{{ include "demo-app.name" . }}
{{- end }}


{{/*
Common labels
*/}}
{{- define "demo-app.labels" -}}
app.kubernetes.io/name: {{ include "demo-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end }}


{{/*
Selector labels
*/}}
{{- define "demo-app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "demo-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
