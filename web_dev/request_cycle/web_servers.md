###1: What are some of the key design philosophies of the Linux operating system?
  - The biggest one has to be the commitment to open source. One of the other core principles is that it is designed for users who are computer literate; an OS by computer people, of computer people, and for computer people. I found a quote about this attributed to a gentleman named Doug Gwyn:

>*"Unix was not designed to stop its users from doing stupid things, as that would also stop them from doing clever things."*
    - Some other parts of the philosophy include:
      - Small is beautiful
      - Each program should do one thing well
      - Prototype as soon as possible
      - Choose portability over efficiency
      - Store data in flat text files
      - Use software leverage
      - Use shell scripts to increase leverage and portability
      - Avoid captive user interfaces
      - Make every program a filter

###2: In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
  - A VPS is a specific type of VM that runs an OS of the owner's choice. In reality, the cloud server that someone purchases from AWS or DigitalOcean is a partition of a physical server in that company's warehouse. For this reason, VPSs have equivalent underlying hardware and capabilities of traditional servers, because they are literally a portion of a traditional server.
  - The advantages of using a VPS are cost and ease of use. It's far cheaper to purchase a portion of a server (essentially a computing timeshare) than the whole thing. Also, because a VPS is software, it's much easier to configure than a server with all the associated hardware.

###3: Why is it considered a bad idea to run programs as the root user on a Linux system?
  - MASSIVE SECURITY PROBLEM! If you enable an application or program to run with full privileges to everything, a malicious actor can potentially use that level of access to view and/or modify ANY data on that Linux system. It's basically like giving a gardener the key to your front door - there's not a great reason for it, and has massive potential downside (not from the gardener, but anyone else who figures out the gardener has your key).