k3s_version = "v1.24.4+k3s1"

disable = {
  coredns        = true
  traefik        = true
  metrics_server = true
  servicelb      = true
  local_storage  = true
}

network = {
  flannel_backend = "none"
}

server_nodes = [
  {
    host = "10.8.0.50"
    user = "k3s"
    taints = [
      # Faz nó rodar apenas pods críticos
      # "CriticalAddonsOnly=true:NoExecute",

      # Desabilita carga de trabalho no nó master
      "node-role.kubernetes.io/master=true:NoSchedule",
    ]
  },
]

agent_nodes = [
  {
    host = "10.8.0.51"
    user = "k3s"
    labels = [
      # não é possível atribuir uma role como label no startup do agent
      # "node-role.kubernetes.io/storage=true"
    ]
  },
  {
    host = "10.8.0.150"
    user = "k3s"
  },
]
