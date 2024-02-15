git clone https://github.com/jun-fang820/getup-core.git

ln -s getup-core/* .

pip install -r requirements.txt

python ./python_scripts/merge_mkdocs.py

python ./python_scripts/generate_md.py \
--getup_threshold 8.75 \
--recent_days 30 \
--name Jun
                      
mkdocs gh-deploy --force

git add .
git commit -m "$(date +%Y-%m-%d) update"
git push origin gh-pages:gh-pages
