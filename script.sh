trap 'echo "The Curse and Bless process has completed!" ' EXIT
while read -r net repo
do
        ghe-spokesctl replica fail network/$net git-server-e9236588-4e22-11ed-b8da-005056b63f5d
        ghe-spokesctl bless $net/$repo git-server-41ff660e-bafd-11ea-9a74-005056a49c44
done < repolistpartaf
