# kubrnetes-hw
<ul>
    <li>
        create vpc network <br/>
        gcloud compute networks create kubesree-network --subnet-mode custom --verbosity info
    </li>
    <li>
        create subnet for 240 ip address space <br/>
        gcloud compute networks subnets create kubesree-subnet --network kubesree-network --range 10.240.0.0/24 --verbosity info
    </li>
    <li>
        create firewall rules for allowing internal comms across all protoclos and external for ssh, icmp and https <br/>
        gcloud compute firewall-rules create kubesree-allow-internal-firewall-rule --allow tcp,udp,icmp --network kubesree-network --source-ranges 10.240.0.0/24,10.200.0.0/16 --verbosity info <br/>
        gcloud compute firewall-rules create kubesree-allow-external-firewall-rule --allow tcp:22,tcp:6443,icmp --network kubesree-network --source-ranges 0.0.0.0/0 --verbosity info <br/>
    </li>
    <li>
        create kubernetes public ip address <br/>
        gcloud compute addresses create kubesree-ipaddress --region europe-west2 --verbosity info
    </li>
    <li>
        create compute instances for data plane and to host nodes/pods/apps/services. using ubuntu server for containerd container runtime. each compute instance is using a fixed ip address <br/>
        for i in 0 1 2: do
            gcloud compute instances create controller-${i} --async --boot
    </li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
    <li></li>
</ul>
