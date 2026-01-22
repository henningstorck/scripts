@echo off

scoop bucket add extras
scoop install ^
    main/helm ^
    main/k9s ^
    main/kubectl ^
    extras/kubelogin
