post_name=$1
post_name=`echo $post_name | tr -s ''` # 去除多余空格
post_name=` echo ${post_name} | sed 's/[ ]/-/g'` # 替换空格为 - 
echo ${post_name}
date_string=`date +%Y%m%d%H%M%S` # 毫秒字符串
date_string=`date +%Y%m%d` # 日期字符串
date
hugo new blogs/${post_name}.md $@
# 替换文件名
cd content/blogs/
mv ${post_name}.md ${date_string}-${post_name}.md