#!/bin/bash
repolist=repolistpartaf
trap 'echo "The Curse and Bless process has completed!" ' EXIT
while read -r net repo
do
        ghe-spokesctl replica fail network/$net git-server-[$nodeID] &>/dev/null
        sleep 5s
        ghe-spokesctl bless $net/$repo git-server-[$nodeID] &>/dev/null
done < $repolist
