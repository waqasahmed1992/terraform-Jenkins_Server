%{for ports in port ~}
    backend = ${ip_addr}:${ports}
%{endfor ~}