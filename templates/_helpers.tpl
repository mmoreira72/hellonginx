{{- define "hellonginx.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "hellonginx.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "hellonginx.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
