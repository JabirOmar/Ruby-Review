Production.destroy_all
CrewMember.destroy_all

Production.create(title: 'Carman', genre:'Opera', budget:'80000', image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0rfm7ulLh-hULWlR8NBtrIwRCCWql8VQ9zw&usqp=CAU', director: 'Ibrahim', ongoing:true)
Production.create(title: 'caveman', genre:'Opera', budget:'80000', image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0rfm7ulLh-hULWlR8NBtrIwRCCWql8VQ9zw&usqp=CAU', director: 'Ibrahim', ongoing:true)
Production.create(title: 'fhjd', genre:'Opera', budget:'80000', image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0rfm7ulLh-hULWlR8NBtrIwRCCWql8VQ9zw&usqp=CAU', director: 'Ibrahim', ongoing:true)
Production.create(title: 'fdjwsdb', genre:'Opera', budget:'80000', image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0rfm7ulLh-hULWlR8NBtrIwRCCWql8VQ9zw&usqp=CAU', director: 'Ibrahim', ongoing:true)

30.times{CrewMember.create(name:Faker::Name.name, job_title:'Stagehand', salary:65000.00, production:Production.all.sample)}
