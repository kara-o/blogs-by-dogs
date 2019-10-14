# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Blog.destroy_all
Comment.destroy_all

b1 = Blog.create(author: 'Ellie', content: 'Doggo ipsum woofer blep shooberino corgo much ruin diet pupperino, blep woofer very hand that feed shibe wrinkler.  Heckin ruff doggo fluffer you are doing me the shock, much ruin diet doge. Pupper heckin good boys and girls borkdrive, big ol. Lotsa pats wow such tempt clouds dat tungg tho wrinkler, pupperino heckin angery woofer woofer heckin, lotsa pats thicc borking doggo. Long water shoob doggorino floofs fat boi such treat doing me a frighten puggorino, long woofer blop porgo woofer.
')
b2 = Blog.create(author: 'Chet', content: 'Doggo ipsum pupperino aqua doggo big ol long water shoob, clouds smol. Shooberino doing me a frighten floofs most angery pupper I have ever seen shoob big ol, doggorino vvv long doggo mlem. Extremely cuuuuuute very good spot borkdrive, waggy wags. Aqua doggo you are doing me the shock yapper, shibe. Pats wow very biscit heckin long bois, noodle horse most angery pupper I have ever seen. Heckin good boys corgo length boy porgo borking doggo you are doing me a frighten, many pats heckin angery woofer wrinkler. Boofers long doggo what a nice floof heckin good boys and girls adorable doggo, such treat borkf shibe. Woofer he made many woofs bork shooberino I am bekom fat, heckin angery woofer tungg. Shooberino big ol mlem dat tungg tho much ruin diet waggy wags doggorino extremely cuuuuuute, heckin good boys and girls very taste wow borkdrive doing me a frighten long bois doing me a frighten, long doggo you are doing me a frighten many pats shoober woofer dat tungg tho.')
b3 = Blog.create(author: 'Kramer', content: 'Doggo ipsum vvv you are doin me a concern big ol pupper borking doggo blop adorable doggo smol borking doggo with a long snoot for pats, sub woofer puggo wow such tempt sub woofer.  Blep very good spot heck floofs, wrinkler. Boofers much ruin diet maximum borkdrive shoober, wow such tempt smol long doggo he made many woofs, mlem doge. Doggo heckin snoot puggorino such treat, boofers big ol. Corgo sub woofer heckin good boys and girls corgo very taste wow woofer, yapper blop pupper ur givin me a spook. Puggo waggy wags shibe borkdrive wow such tempt very hand that feed shibe, floofs h*ck aqua doggo long bois.')

Comment.create(content: 'ruff', blog: b1)
Comment.create(content: 'h*ck', blog: b1)
Comment.create(content: 'bow-wow', blog: b2)
Comment.create(content: 'grrrrr', blog: b2)
Comment.create(content: 'arf', blog: b3)
Comment.create(content: 'pizza?', blog: b3)