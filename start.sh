if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/scroogex/adgfilter2 /adgfilter2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /adgfilter2
fi
cd /adgfilter2
pip3 install -U -r requirements.txt
echo "Starting ADG Search....🔥"
python3 bot.py
