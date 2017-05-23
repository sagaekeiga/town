worker_processes 2
working_directory "/home/anime/town/current" #appと同じ階層を指定

timeout 3600


listen "/var/run/unicorn/town.sock"
pid "/var/run/unicorn/town.pid"


stderr_path "/home/anime/town/current/log/unicorn.log"
stdout_path "/home/anime/town/current/log/unicorn.log"


preload_app true