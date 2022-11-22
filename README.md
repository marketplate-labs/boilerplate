    ███╗   ███╗ █████╗ ██████╗ ██╗  ██╗███████╗████████╗██████╗ ██╗      █████╗ ████████╗███████╗
    ████╗ ████║██╔══██╗██╔══██╗██║ ██╔╝██╔════╝╚══██╔══╝██╔══██╗██║     ██╔══██╗╚══██╔══╝██╔════╝
    ██╔████╔██║███████║██████╔╝█████╔╝ █████╗     ██║   ██████╔╝██║     ███████║   ██║   █████╗  
    ██║╚██╔╝██║██╔══██║██╔══██╗██╔═██╗ ██╔══╝     ██║   ██╔═══╝ ██║     ██╔══██║   ██║   ██╔══╝  
    ██║ ╚═╝ ██║██║  ██║██║  ██║██║  ██╗███████╗   ██║   ██║     ███████╗██║  ██║   ██║   ███████╗
    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝     ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝

# Pre-requisites

- Docker
- Docker Compose

# Installation

1. Clone
```
  git clone --recurse-submodules -j8 git@github.com:marketplate-labs/boilerplate.git
  cd boilerplate
```

2. Run
```
  ./start.sh
```

3. Provide the required configuration (optional)

4. Wait approximately for 3-4 minutes for all the containers to be running and syncing with the blockchain

5. Open
```
  http://localhost:3000
```

# TODO
- [ ] Properly fix code commented in the codebase of `marketplace`
- [ ] Change baseUrl in `indexer`, look for `reservoir.tools`
- [ ] Deploy alternative `metadata` on separate server to mitigate OpenSea rate limits
