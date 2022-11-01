## liquidcfg helpers and configuration files

```bash
├── etc
│   ├── init.d
│   │   └── liquidcfg.sh                    # Configures the AIO and MB lights.
│   └── systemd
│       └── systemd
│           ├── liquidcfg-resume.service    # Starts the service on resume
│           └── liquidcfg.service           # Run liquidcfg.sh as a service
└── opt
    └── aio                                 # Switch between AIO modes
```
