if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/FILMCLAN/MYD.git /MYD
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MYD
fi
cd /MYD
pip3 install -U -r requirements.txt
echo "Starting MYD...."
python3 bot.py
