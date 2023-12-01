if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AGSMOD/Wednesday.git /Wednesday
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Wednesday
fi
cd /Wednesday
pip install -U -r requirements.txt
echo "Starting DQ-The-File-Donor...."
python bot.py
