if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/scroogex/adgsearch /adgsearch
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /adgsearch
fi
cd /adgsearch
pip3 install -U -r requirements.txt
echo "Starting ADG Search....🔥"
python3 bot.py
