output "vm_ip" {
  value = aws_instance.vm.public_ip
}

# Para entrar na máquina = $ ssh -i aws-key ubuntu@{vm_ip}