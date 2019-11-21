# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "> creating data"


User.destroy_all
Favorite.destroy_all
Location.destroy_all
University.destroy_all
Category.destroy_all
Program.destroy_all
Review.destroy_all
Match.destroy_all
Mbti.destroy_all


loca1 = Location.create(country: "Belgium", city: "Brussels")
loca2 = Location.create(country: "Belgium", city: "Antwerp")
loca3 = Location.create(country: "Belgium", city: "Namur")
loca5 = Location.create(country: "Belgium", city: "Louvain-la-Neuve")
loca6 = Location.create(country: "Belgium", city: "Leuven")
loca7 = Location.create(country: "Belgium", city: "Gent")

url1 = "https://jobday-sciences.be/static/companies/photos/ULB.png"
uni1 = University.create(name: "Université Libre de Bruxelles", location: loca1, address: "Avenue Franklin Roosevelt 50, 1050 Bruxelles")
uni1.remote_photo_url = url1
uni1.save

url2 = "https://images.unsplash.com/photo-1537888692311-8a7fb3e9f374?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80"
uni2 = University.create(name: "Universiteit van Antwerpen", location: loca2, address: "Prinsstraat 13, 2000 Antwerpen")
uni2.remote_photo_url = url2
uni2.save

url3 = "https://ds1.static.rtbf.be/article/image/1248x702/5/c/8/b7ecd58bd8a373f0506bb75d4c559b49-1524823372.jpg"
uni3 = University.create(name: "Université de Namur", location: loca3, address: "Rue de Bruxelles 61, 5000 Namur")
uni3.remote_photo_url = url3
uni3.save

url4 = "https://images.unsplash.com/photo-1474650919751-b7e21a1b180f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=1650&q=80"
uni4 = University.create(name: "Université Catholique de Louvain", location: loca5, address: "Place de l'Université 1, 1348 Ottignies-Louvain-la-Neuve")
uni4.remote_photo_url = url4
uni4.save

url6 = "https://www.kul.pl/files/956/gfx/strona_glowna/gmach_glowny.jpg"
uni6 = University.create(name: "KU Leuven", location: loca6, address: "Oude Markt 13, 3000 Leuven")
uni6.remote_photo_url = url6
uni6.save

url7 = "https://www.onlyengineerjobs.be/sites/default/files/ugent-jobs.png"
uni7 = University.create(name: "Ghent University", location: loca7, address: "Oude Markt 13, 3000 Leuven")
uni7.remote_photo_url = url7
uni7.save


cat1 = Category.create(name: "Economics and Business", icon: "team.svg")
cat2 = Category.create(name: "Theology and Religious Studies")
cat3 = Category.create(name: "Philosophy")
cat4 = Category.create(name: "Law")
cat5 = Category.create(name: "Human and Social Sciences")
cat6 = Category.create(name: "Arts and Architecture")
cat7 = Category.create(name: "Psychology and Educational Sciences")
cat8 = Category.create(name: "Science")
cat9 = Category.create(name: "Engineering Science")
cat10 = Category.create(name: "Bioscience")
cat12 = Category.create(name: "Medicine")
cat13 = Category.create(name: "Movement and Rehabilitation Sciences")
cat14 = Category.create(name: "Pharmaceutical")
cat15 = Category.create(name: "Public Health")
cat16 = Category.create(name: "Computer Science and IT", icon:"ai.svg")
cat17 = Category.create(name: "Event Management")


Program.create( university: uni1,
                category: cat1,
                name: "Bachelor in Business Engineering",
                price: 835,
                level: "Bachelor",
                duration: 36,
                description: "This bachelor's degree provides the student with all the basic knowledge and skills in management and the exact sciences as well as courses in general culture and languages. It also aims to train the student in the study of management sciences in a master's degree. This training will allow the student to understand all the organizational aspects of a company. The program consists of a broad core curriculum, supplemented by optional courses grouped into minors. Minor girls allow students to gradually start their specialization.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "No specific entry requitements for this program.",
                language: "French",
                course1: ["General chemistry", "Introduction to microeconomics", "Introduction to macroeconomics", "Economic geography", "Financial accounting", "Economic history: companies, industry, organizations", "Mathematics for management : analysis and linear algebra", "Fundamental knowledge and elements of physics", "Descriptive statistics and elements of probability", "English - Dutch"],
                course2: ["Industrial applications of chemistry", "Private law and economic law", "Monetary theory I", "Corporate accounting and financial statement analysis", "Introduction to organizations and social responsibility (Mindful Leadership and CSR Chair)", "Computer science", "Mathematics : Linear algebra II and functions of several variables", "Information technology physics", "Probability, statistical inference and operational research", "English I", "Dutch I"],
                course3: ["Tax law", "Psychology and labour law", "Human resources management", "Financial theory", "Marketing management", "Management control", "Introduction to econometrics", "Economic and social development", "Multidisciplinary seminar on science and technology - Communication techniques", "Theory of innovation and entrepreneurship", "English II", "Business Dutch"],
)

Program.create( university: uni4,
                category: cat1,
                name: "Master in Public Health",
                price: 0,
                level: "Bachelor",
                duration: 24,
                description: "",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French"
)

Program.create( university: uni6,
                category: cat1,
                name: "Master in Public Health",
                price: 0,
                level: "Bachelor",
                duration: 24,
                description: "",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French"
)

Program.create( university: uni7,
                category: cat1,
                name: "Master in Public Health",
                price: 0,
                level: "Bachelor",
                duration: 24,
                description: "",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French"
)



Program.create( university: uni4,
                        category: cat1 ,
                        name: "Master in Econommics: Econometrics",
                        price: 0 ,
                        level: "Undergraduate",
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "" ,
                        language:"English")
Program.create( university: uni4,
                        category: cat1,
                        name: "Master in Economics: General",
                        price: 0 ,
                        level: "Master",
                        duration: 24,
                        description: "The master focuses on the general, specific, personal and openness skills. The offer of specialisations is based on the areas of expertise of the Economics School of Louvain (ESL): growth and globalisation, development, finance, economy and society, economic policy, Firm strategy & Innovation, European Business, Research oriented.",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "",
                        language: "English" ,)

Program.create( university: uni4,
                        category: cat2,
                        name: "Master in Sciences of Religions",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "",
                        language: "French")
Program.create( university: uni4,
                        category: cat2,
                        name: "Master in Biblical Studies",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile:"",
                        admission_requirements: "",
                        language: "French")
Program.create( university: uni4,
                        category: cat2,
                        name: "Master in Theology (Louvain-la-Neuve)",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "",
                        language: "French")

Program.create( university: uni4,
                        category: cat3,
                        name: "Master in Ethics",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "",
                        language: "French")
Program.create( university: uni4,
                        category: cat3,
                        name: "Master in Philosophy",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "By the end of the Master’s degree, you will be capable of:

producing a critical overview of the literature on a philosophical question;
comparing and defending philosophical arguments;
taking part in philosophical debates in your area of specialisation;
carrying out a piece of personal research, writing it up and presenting the results orally.
Depending on the focus you have chosen, you will also have developed:

advanced skills in philosophy (research focus);
specific skills, through international experience gained outside UCL (professional focus);
teaching skills (teaching focus).",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements:"1° Student must hold a first level university degree.

2° Provide proof of a sufficient level in French (B1 of the European Framework of Reference )

3° Student must have developed the following skills in his previous training:

complete grasp of the scientific written and oral practices of the French language;
compétence dans les disciplines philosophiques suivantes : logique, morale, épistémologie, anthropologie, métaphysique, philosophie sociale;
maîtrise de l'histoire de la philosophie;
compétence dans la lecture commentée d'un grand texte de la tradition philosophique;
At the end of the 1st level programme, including at least the following 60 specific credits:
e
Philosophical propaedeutics (5 credits);
Moral Philosophy (6 credits);
Epistemology (10 credits);
Logique (5 credits);
Metaphysics (5 credits);
Anthropology  (5 credits);
Social and politic Philosophy (4 credits);
History of philosophy (6 crédits);
Philosophical texts (6 crédits);
Initiation à la rédaction scientifique (5 crédits).
The 30 credits of the Minor in Philosophy [30.0] satisfy these requriements.
Courses not taken will be added to the masters programme (without exceeding a total of 15 credits).
If the total number of prerequisites exceeds 15 credits, access to the master is subject to the student passing an filo1pm the programme of which is established on the basis of the student's file.
Course equivalences are submitted for approval to the chairman of the jury, the secretary of the jury and the academic faculty secretary.
4° Students wishing to pursue a Master's degree with a teaching focus must have a French Community of Belgium diploma; failing this, they will have to pass a French language proficiency examination to demonstrate that their command of written and spoken French is equivalent to Level C1 of the Common European Framework of Reference for Languages (for further information, visit https://uclouvain.be/en/study/inscriptions/french-language-master-teaching.html).
5° This professional focus is reserved exclusively for students admitted to the Master's in 'German and French Philosophy: Contemporary Issues (Europhilosophie)', within the Erasmus Mundus programme, of which the School of Philosophy is a partner." ,
                        language: ["French","English"])

Program.create( university: uni4,
                        category: cat4,
                        name: "Master in Law",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "Il faut apporter la preuve d'une maîtrise suffisante de la langue française (niveau B1 du Cadre européen commun de référence).",
                        language: ["English", "French"])
Program.create( university: uni4,
                        category: cat4,
                        name: "Master in Law",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "Il faut apporter la preuve d'une maîtrise suffisante de la langue française (niveau B1 du Cadre européen commun de référence).",
                        language: ["English", "French"])

Program.create( university: uni4,
                        category: cat5,
                        name: "Master in Human Resources Management",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "According to the admission regulations, students must submit a request for admission before  official enrolment. This is examined by the  academic coordinator together with the management committee.",
                        language: ["English", "French"])
Program.create( university: uni4,
                        category: cat5,
                        name: "Master in Labour sciences",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "The entrance examination for those having completed a course of higher education  in an institution other than a university (l'Enseignement Supérieur hors université -SHU) comprises: a personal file to be submitted by each student containing evidence that the correct number of prerequisite subjects has already been followed; and a written examination designed to test skills in summary, criticism and expression. Further information is available on the Institute of Labour Sciences  website – www.uclouvain.be/trav – and from the Institute office.",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "According to the admission regulations, students must submit a request for admission before  official enrolment. This is examined by the  academic coordinator together with the management committee.",
                        language: ["English", "French"])

Program.create( university: uni4,
                        category: cat5,
                        name: "Master in Human Recources Management",
                        price:  0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "According to the admission regulations, students must submit a request for admission before  official enrolment. This is examined by the  academic coordinator together with the management committee.",
                        language: ["English", "French"])
  Program.create( university: uni4,
                        category: cat5,
                        name: "Master in Social transitions and innovations",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "According to the admission regulations, students must submit a request for admission before  official enrolment. This is examined by the  academic coordinator together with the management committee.",
                        language: ["English", "French"])
Program.create( university: uni4,
                        category: cat5,
                        name: "Master in Labour Sciences",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "The entrance examination for those having completed a course of higher education outside a university comprises a personal file to be submitted by each student containing evidence that the correct number of prerequisite subjects has already been followed. There is also a written examination designed to test skills in summary, criticism and expression as well as the comprehension of basic academic texts on labour issues. Further information is available on the Institute of Labour Sciences website – www.uclouvain.be/trav – and from the Institute office.",
                        language: ["English", "French"])

Program.create( university: uni4,
                        category: cat6,
                        name: "Master in Performing Arts",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "The study programme for the Master’s degree is organised around four main elements:
dialogue on the Western theatrical tradition;
dialogue on the academic disciplines which analyse theatrical creation;
dialogue on theatrical practice, in the form of workshops and work placements in a professional environment;
for future secondary teachers, dialogue with educationalists, through the study of the different trends in general teaching and teaching for the theatre.",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "According to the admission regulations, students must submit a request for admission before  official enrolment. This is examined by the  academic coordinator together with the management committee.",
                        language: ["English", "French"])
Program.create( university: uni4,
                        category: cat6,
                        name: "Master in History of Art and Archaeology : General",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "The Master’s degree puts emphasis on a practical approach to the history of art and archaeology :
museum visits, concerts, study visits in Belgium and abroad, in collaboration with museums (the museums of Louvain-la-Neuve, Mariemont, musical instruments, etc.), issues relating to museums ;
practical exercises in different laboratories ;
work experience in the field : archaeological excavations, museums, research laboratories etc.",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "The entrance examination for those having completed a course of higher education outside a university comprises a personal file to be submitted by each student containing evidence that the correct number of prerequisite subjects has already been followed. There is also a written examination designed to test skills in summary, criticism and expression as well as the comprehension of basic academic texts on labour issues. Further information is available on the Institute of Labour Sciences website – www.uclouvain.be/trav – and from the Institute office.",
                        language: ["English", "French"])
Program.create( university: uni4,
                        category: cat6,
                        name: "Master in History of Art and Archaeology: Musicology",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "The Master’s degree offers a programme which is unique in the French-speaking Community based on original and dynamic teaching methods thanks to the links with the University of Liege, the Université libre de Bruxelles and the higher education colleges IMEP (Institut Supérieur de Musique et de Pédagogie, Namur) and IHECS (Institut des Hautes Etudes en Communication Sociale, Brussels).
By the end of this Master’s degree, you
will have had solid training in pure musicology ;
will have specialised in one of the main professional fields either through choosing a professional focus in musicology related to art history, or the practice of music related to a theoretical approach, with the ’IMEP (Institut Supérieur de Musique et de Pédagogie, Namur) or on careers as a manager, critic or musical events organiser, with IHECS (Institut des Hautes Etudes en Communication Sociale, Brussels) and COMU (Faculty of Economic, Social and Political Sciences – School of communication).",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "The entrance examination for those having completed a course of higher education outside a university comprises a personal file to be submitted by each student containing evidence that the correct number of prerequisite subjects has already been followed. There is also a written examination designed to test skills in summary, criticism and expression as well as the comprehension of basic academic texts on labour issues. Further information is available on the Institute of Labour Sciences website – www.uclouvain.be/trav – and from the Institute office.",
                        language: ["English", "French"])

Program.create( university: uni4,
                        category: cat7,
                        name: "Master in Education ",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "The entrance examination for those having completed a course of higher education outside a university comprises a personal file to be submitted by each student containing evidence that the correct number of prerequisite subjects has already been followed. There is also a written examination designed to test skills in summary, criticism and expression as well as the comprehension of basic academic texts on labour issues. Further information is available on the Institute of Labour Sciences website – www.uclouvain.be/trav – and from the Institute office.",
                        language: ["English", "French"])
Program.create( university: uni4,
                        category: cat7,
                        name: "Master in Family and Sexuality Studies",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "The entrance examination for those having completed a course of higher education outside a university comprises a personal file to be submitted by each student containing evidence that the correct number of prerequisite subjects has already been followed. There is also a written examination designed to test skills in summary, criticism and expression as well as the comprehension of basic academic texts on labour issues. Further information is available on the Institute of Labour Sciences website – www.uclouvain.be/trav – and from the Institute office.",
                        language: "French")
Program.create( university: uni4,
                        category: cat7,
                        name: "Master in Speech and Language Therapy",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "The entrance examination for those having completed a course of higher education outside a university comprises a personal file to be submitted by each student containing evidence that the correct number of prerequisite subjects has already been followed. There is also a written examination designed to test skills in summary, criticism and expression as well as the comprehension of basic academic texts on labour issues. Further information is available on the Institute of Labour Sciences website – www.uclouvain.be/trav – and from the Institute office.",
                        language: "French")

Program.create( university: uni4,
                        category: cat8,
                        name: "Master in Actuarial Science ",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "The entrance examination for those having completed a course of higher education outside a university comprises a personal file to be submitted by each student containing evidence that the correct number of prerequisite subjects has already been followed. There is also a written examination designed to test skills in summary, criticism and expression as well as the comprehension of basic academic texts on labour issues. Further information is available on the Institute of Labour Sciences website – www.uclouvain.be/trav – and from the Institute office.",
                        language:  ["English", "French"])
Program.create( university: uni4,
                        category: cat8,
                        name: "Master in Biochemistry and Molecular and Cell Biology ",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "The entrance examination for those having completed a course of higher education outside a university comprises a personal file to be submitted by each student containing evidence that the correct number of prerequisite subjects has already been followed. There is also a written examination designed to test skills in summary, criticism and expression as well as the comprehension of basic academic texts on labour issues. Further information is available on the Institute of Labour Sciences website – www.uclouvain.be/trav – and from the Institute office.",
                        language:  ["English", "French"])
Program.create( university: uni4,
                        category: cat8,
                        name: "Master in Chemistry",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "The entrance examination for those having completed a course of higher education outside a university comprises a personal file to be submitted by each student containing evidence that the correct number of prerequisite subjects has already been followed. There is also a written examination designed to test skills in summary, criticism and expression as well as the comprehension of basic academic texts on labour issues. Further information is available on the Institute of Labour Sciences website – www.uclouvain.be/trav – and from the Institute office.",
                        language:  ["English", "French"])
 # cat 9 -> Engineering Science
Program.create( university: uni4,
                        category: cat9,
                        name: "Master: Business Engineering",
                        price: 835,
                        level: "Master" ,
                        duration: 24,
                        description: "The Business Engineering master is a two-year management programme which is intended to strengthen the managerial abilities of students having a background in sciences (physics and chemistry) and technologies (energy, electronics and telecommunications, mechanical engineering and processes) in addition to their training in economics and management and quantitative methods.
The Louvain School of Management was classed 22nd in the world in the 2011 ranking of the Financial Times (and 1st in Belgium) for its master programme in Business Engineering.",
                        application_deadline: "- 30 April for Non-EU citizens not living in Belgium
- 31 August for EU citizens not living in Belgium
- 15 September for any nationality residing in Belgium" ,
                        student_profile: "You wish to develop your skills in the management of technologies;
you seek to develop concrete in-company experience and participate in the management of complex and innovative projects;
you are looking for a high-quality education, based on solid scientific knowledge, in the area of high-tech industry and services;
you are motivated by entrepreneurial drive and a desire to learn how to work effectively in a team;
you wish to become a manager.",
                        admission_requirements: "The entrance examination for those having completed a course of higher education outside a university comprises a personal file to be submitted by each student containing evidence that the correct number of prerequisite subjects has already been followed. There is also a written examination designed to test skills in summary, criticism and expression as well as the comprehension of basic academic texts on labour issues. Further information is available on the Institute of Labour Sciences website – www.uclouvain.be/trav – and from the Institute office.",
                        language:  ["English", "French"])
Program.create( university: uni4,
                        category: cat9,
                        name: "Master in Agricultural Bioengineering",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "The entrance examination for those having completed a course of higher education outside a university comprises a personal file to be submitted by each student containing evidence that the correct number of prerequisite subjects has already been followed. There is also a written examination designed to test skills in summary, criticism and expression as well as the comprehension of basic academic texts on labour issues. Further information is available on the Institute of Labour Sciences website – www.uclouvain.be/trav – and from the Institute office.",
                        language:  ["English", "French"])
Program.create( university: uni4,
                        category: cat9,
                        name: "Master in Environmental Bioengineering",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "The entrance examination for those having completed a course of higher education outside a university comprises a personal file to be submitted by each student containing evidence that the correct number of prerequisite subjects has already been followed. There is also a written examination designed to test skills in summary, criticism and expression as well as the comprehension of basic academic texts on labour issues. Further information is available on the Institute of Labour Sciences website – www.uclouvain.be/trav – and from the Institute office.",
                        language:  ["English", "French"])
    # cat 10 -> Biosscience
Program.create( university: uni4,
                        category: cat10,
                        name: "Master in Biomedicine ",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "Les candidats étudiants non francophones (UE et hors UE) devront apporter la preuve, dans leur demande d'admission, d'une maîtrise suffisante de la langue française (niveau B1 du Cadre européen commun de référence , pages 24 à 29)",
                        language:  ["English", "French"])
Program.create( university: uni4,
                        category: cat10,
                        name: "Master in Pharmacy ",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "Les candidats étudiants non francophones (UE et hors UE) devront apporter la preuve, dans leur demande d'admission, d'une maîtrise suffisante de la langue française (niveau B1 du Cadre européen commun de référence , pages 24 à 29)",
                        language:  "French")
Program.create( university: uni4,
                        category: cat10,
                        name: "Master in Biochemistry and Molecular and Cell Biology",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "Les candidats étudiants non francophones (UE et hors UE) devront apporter la preuve, dans leur demande d'admission, d'une maîtrise suffisante de la langue française (niveau B1 du Cadre européen commun de référence , pages 24 à 29)",
                        language:  ["English", "French"])
    # cat 11 --> architecture
Program.create( university: uni4,
                        category: cat6,
                        name: "Master in Architecture",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "In addition to fulfilling the admission requirements described below, the candidates must demonstrate sufficient command of the French language (level B1 of the Common European Framework of Reference).",
                        language:  "French")
Program.create( university: uni4,
                        category: cat6,
                        name: "Master in Architecture and Engineering",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "In addition to fulfilling the admission requirements described below, the candidates must demonstrate sufficient command of the French language (level B1 of the Common European Framework of Reference).",
                        language:  "French")
    # cat 12 --> Medicine
Program.create( university: uni4,
                        category: cat12,
                        name: "Master in Biomedicine (Brussel Woluwe)",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: """",
                        student_profile: "",
                        admission_requirements: "In addition to fulfilling the admission requirements described below, the candidates must demonstrate sufficient command of the French language (level B1 of the Common European Framework of Reference).",
                        language:  "French")
Program.create( university: uni4,
                        category: cat12,
                        name: "Master in Medecine",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "In addition to fulfilling the admission requirements described below, the candidates must demonstrate sufficient command of the French language (level B1 of the Common European Framework of Reference).",
                        language:  "French")
    # cat 13 --> Movement and Rehabilitation Sciences
Program.create( university: uni4,
                        category: cat12,
                        name: "Master [60] in Physiotherapy and Rehabilitation",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "In addition to fulfilling the admission requirements described below, the candidates must demonstrate sufficient command of the French language (level B1 of the Common European Framework of Reference).",
                        language:  "French")
Program.create( university: uni4,
                        category: cat13,
                        name: "Master in Public Health",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "The entrance examination for those having completed a course of higher education outside a university comprises a personal file to be submitted by each student containing evidence that the correct number of prerequisite subjects has already been followed. There is also a written examination designed to test skills in summary, criticism and expression as well as the comprehension of basic academic texts on labour issues. Further information is available on the Institute of Labour Sciences website – www.uclouvain.be/trav – and from the Institute office.",
                        language:  ["English", "French"])
    # cat 14 --> Pharmaceutica
Program.create( university: uni4,
                        category: cat14,
                        name: "Master [120] in Pharmacy",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "Pour les étudiants issus de tout autre programme que ceux repris dans les conditions d'admission, un dossier mentionnant les motivations et les crédits obtenus au cours des études précédentes est à soumettre à la commission d'admission de l'Ecole de pharmacie pour le 10 septembre au plus tard.",
                        language:  "French")
Program.create( university: uni4,
                        category: cat14,
                        name: "Master in Biomedicine",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "Pour les étudiants issus de tout autre programme que ceux repris dans les conditions d'admission, un dossier mentionnant les motivations et les crédits obtenus au cours des études précédentes est à soumettre à la commission d'admission de l'Ecole de pharmacie pour le 10 septembre au plus tard.",
                        language:  "French")
  # cat 15 --> Public Health
Program.create( university: uni4,
                        category: cat15,
                        name: "Master in Public Health ",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "Accès personnalisé : le master peut également être accessible sur examen de dossier et notamment par validation des acquis de l'expérience (www.uclouvain/VAE)
Procédures particulières (éventuelles) : ce master ouvre le droit aux « congé d'éducation » payés.",
                        language: ["English", "French"])
Program.create( university: uni4,
                        category: cat14,
                        name: "Master in Public Administration",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "Applications and requests for further information should be addressed to the programme director (C. Herman).
It is up to the programme director to agree all requests for exemption, equivalences between different subjects and entry by means of a special personal file. She is also responsible for agreeing the individual programme of each student.",
                        language:  ["English", "French"])
Program.create( university: uni4,
                        category: cat14,
                        name: "Master in Forests and Natural Areas Engineering",
                        price: 0,
                        level: "Master" ,
                        duration: 24,
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?",
                        application_deadline: "",
                        student_profile: "",
                        admission_requirements: "Applications and requests for further information should be addressed to the programme director (C. Herman).
It is up to the programme director to agree all requests for exemption, equivalences between different subjects and entry by means of a special personal file. She is also responsible for agreeing the individual programme of each student.",
                        language:  ["English", "French"])

Program.create( university: uni1,
                category: cat1,
                name: "Master in Business Engineering",
                price: 0,
                level: "Master",
                duration: 24,
                description: "This very intensive and demanding programme, prepares future executives, leaders, and entrepreneurs who can work in any type of industry and organisation—for-profit, non-profit, or public. Students in this programme develop the ability to understand and engage in all areas of business administration. A business engineer is able to integrate all main functions and departments of an organisation and to arbitrate between them. Students develop their knowledge and know-how in all fields of management (strategy, finance, marketing, human resources and leadership, operations and supply-chain, innovation, information systems, and digital business), while also learning key skills involved in defining a strategy, enacting changes, or creating a business: information analysis, problem solving, project leadership, personnel management, communication, ethics in business, critical thinking, entrepreneurial drive, team work, and self-management.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: ["French", "English"] )
Program.create( university: uni1,
                category: cat1,
                name: "Master in Management Science",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The Master in Management Science is a demanding programme that aims to train students in all core disciplines and areas relevant to business management. Its key distinguishing features are the size of its first year common core (advanced mandatory courses)—which provides students with a solid base of knowledge and skills—, its strong emphasis on analytical skills, and its multi-disciplinary nature (law, economics, management, communication, and languages)—which provides students with a breadth of tools and approaches to evolve in an increasingly complex and dynamic world. A wide selection of electives in the second year allows students to pursue their intellectual interests in all disciplines of management or apply their skills in a supervised consulting project with partner companies.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: ["French", "English"] )
Program.create( university: uni1,
                category: cat1,
                name: "Master in Economics: General",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The Master in Economics trains students to become applied economists, policymakers, consultants, and business professionals in sectors and activities that require technical and analytical skills. It provides them with up-to-date quantitative and conceptual tools for economic, statistical, and financial analysis, and prepares them for policy and business practice. Both master programmes have a strong European orientation that manifests itself through EU-specific courses (e.g. on competition policy) or through emphasis placed in general courses on the specificities of the European dimension.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: ["French", "English"] )
Program.create( university: uni1,
                category: cat2,
                name: "Master in Study of Religions and Secular Thought",
                price: 0,
                level: "Master",
                duration: 24,
                description: "Through a systematic comparative study of religion as a phenomenon, this Master programme provides participants with academic training in the study of religion using the tools of human sciences. The programme is based on the concepts of free thought and critical analysis. Students learn about the religions of the world and humanism, and have the opportunity to specialise in key disciplines in this field.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat2,
                name: "Master in Management of Cultural Sector",
                price: 0,
                level: "Master",
                duration: 24,
                description: "In the artistic and cultural world in general, and depending on each student's own professional goals, we train graduates who can: manage a structure or a project in a self-employed capacity, work in a decision-making capacity within a public institution, a private organisation, or a large-scale project. We prepare our students to work in a local or international setting, in one of the following sectors depending on their interests: performing arts, literature, plastic arts, cultural heritage, or tourism.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat3,
                name: "Master in Philosophy",
                price: 0,
                level: "Master",
                duration: 24,
                description: "ULB offers a number of activities and resources that can help you develop a successful strategy before or during your studies. You can make the transition to higher education easier by attending preparatory courses, summer classes, and information and orientation sessions, even before you start your studies at ULB. During your studies, many people at ULB are there specifically to help you succeed: support staff in each faculty, (inter-)faculty guidance counsellors, tutors, and experts in academic methodology.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat3,
                name: "Master in Ethics",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The Master in Ethics enables students to: acquire fundamental knowledge in ethics; learn to apply this knowledge to case analyses and topical issues; learn transdisciplinarity, by attending classes in different ULB faculties and institutes: Philosophy and Letters, Law, Medicine, Pharmacy, Social and Political Sciences, Solvay Brussels School Economics & Management, Psychology and Education, Environmental and Land Planning Management, etc.; benefit from advanced and up-to-date training, with guest speakers in applied ethics from Belgium and abroad. This Master sets itself apart from others with the diversity and complementarity of its three specialised modules, each of which tackles a major current topic.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat4,
                name: "Master in Criminology",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The aim of this Master is to enable participants to understand the different aspects of the issue of crime (types of crime, the workings of the criminal justice system, causes of crime, crime prevention policy, ways of tackling crime, etc.). The complexity of this issue requires multi-disciplinary training which combines sociological, legal, psychological and medical approaches. On completion of the course, which encourages students to develop critical and analytical skills, the criminologist will be able to combine knowledge of different areas in seeking a career in law enforcement, the protection of minors, prison administration, social defence, civil society associations working in drug addiction, prostitution, etc., security contracts, community service management and mediation, the private security sector, victim support, etc. Successful graduates can also opt for careers as researchers at universities or other research centres.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat4,
                name: "Master in Law",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The two blocs of Master in law have the following objectives: to study the branches of law not taught in Bachelor's degree (international law, tax law, etc.); to consolidate and specialize the knowledge acquired in Bachelor's degree; to make students autonomous, adaptable to complex legal situations and capable of producing new or original knowledge.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat5,
                name: "Master in Human Resources Management",
                price: 0,
                level: "Master",
                duration: 24,
                description: "Master in Human Resource Management aims to provide graduates with both conceptual and operational skills in the field of HRM. The goal is to train professionals who can meet the requirements of organisations wishing to optimise their HR support or assess their way of operating. By the end of the programme, graduates will have acquired both general HRM skills and the intellectual skills necessary for positioning HRM in the context of a company's development.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat5,
                name: "Master in Modern Languages and Letters : General",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The programme aims to develop excellent communication skills in foreign languages by placing them in their scientific and cultural context. The Master in Modern Languages and Letters gives graduates the ability to carry out a wide range of tasks independently, in a multilingual professional environment (trilingual or quadrilingual). They also acquire the expertise necessary to contribute to the scientific development of this field and, lastly, they will be able to take a scientific approach to teaching the languages and culture of the regions they have studied.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat5,
                name: "Master in Communication",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The courses that make up the common core of the Master programme (90 credits) address general theories of communication, provide an introduction to major social issues, and include a thorough practice of English in connection with the programme's topics. Students choose one of three specialisations, or focuses (30 credits), that allow them to acquire specific skills and knowledge:",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat6,
                name: "Master in Performing Arts",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The Master in Performing Arts offers an approach that is both theoretical and practical, for students with a passion for the performing arts (theatre, dance, performance art, opera, circus, film…). With this dual approach, students who graduate from the programme will be able—depending on their choice of focus—to analyse a theatrical event and provide support for the creative process in live performing arts; or to combine a reflexive and a practical process as they build their knowledge of the cinematographic language and learn to apprehend the various forms of screenwriting (fiction, documentary, adaptation, but also multimedia), the history of film, and cinematographic techniques.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat7,
                name: "Master in Speech and Language Therapy",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The Master in Speech and Language Therapy is a specialised course which trains participants to work in the fields of speech therapy and orthophony. Speech therapists are consulted for all conditions which are broadly linked to language dysfunction in children, adults or older people. They make a contribution to clinical examination and diagnosis, usually within a multi-disciplinary framework, and are involved in the design and implementation of treatment for rehabilitation, support, remedial activities or readaptation. Their involvement goes beyond the strict field of understanding and producing spoken and written language and also covers difficulties with early communication, voice problems, phonation, swallowing, problem-solving, education, support and assistance for people with hearing difficulties, motor disabilities or significant cognitive impairment.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat7,
                name: "Master in Psychology",
                price: 0,
                level: "Master",
                duration: 24,
                description: "This Master's course at the ULB is split into four different specialisations, which confer the qualification of psychologist and also offers a diploma in specialised training geared towards a specific career objective.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat7,
                name: "Master in Education",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The Master in Educational Sciences is a university course, compatible with professional work.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat8,
                name: "Master in Chemistry",
                price: 0,
                level: "Master",
                duration: 24,
                description: "Due to its central position among hard sciences, chemistry opens up extremely broad possibilities, with links to biochemistry, medicine, geology, physics, or biology. Creating materials with new properties, developing alternative energy sources, synthesising new medicines, ensuring high quality in foodstuffs, and monitoring and reducing pollution are all examples of the challenges that chemists take on. Today, chemistry is the cornerstone of many sustainable development topics. ULB's Chemistry Department is fully aware of these challenges and trains students to analyse new societal problems and call upon their creative potential to solve them. The goal of the Master in Chemistry is to complete the basic training provided in the Bachelor programme, and develop the students’ analytical skills and autonomy.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat8,
                name: "Master in Computer science",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The Master programme trains students who, afterwards, are able to pursue a PhD in Computer Science and—for the majority of the students—be a highly competent and skilled computer scientist in the IT industry. We wish to educate a new generation of IT executives and managers who are aware of their role in the society, who are autonomous, and who can efficiently acquire fresh knowledge all along their career.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat8,
                name: "Master in Mathematics",
                price: 0,
                level: "Master",
                duration: 24,
                description: "Mathematics plays a fundamental role in our technologically advanced society. The discipline is in constant evolution, with new discoveries made at an increasing pace. These answer either questions that were generated by internal progress in mathematics, or problems raised in other disciplines (scientific, industrial, business, etc.). Mathematics has proven to be indispensable in all branches of science and technology: cryptography and codes, medical imagery, telecommunications, theory of fundamental particles, space research, bioengineering, meteorology, ecological modelling, economy and finance, etc. This programme aims to train mathematicians who are ready to contribute to both the theoretical development of the discipline and the solution to problems from various origins. Our Master programme develops the students' ability to reason abstractly and rigorously, but also with invention and imagination. Graduates are also able to use existing powerful mathematical techniques as well as to develop new ones. Through the choices made during the Master programme, our students can direct their learning towards a career in research, in the private sector, or in teaching.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat9,
                name: "Master of science in Physical Engineering",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The Physics Engineering curriculum provides a thorough understanding of the physical phenomena at work in the most advanced technologies. This in-depth approach not only aims at understanding these technologies, but also at improving them through innovation, both at the academic and industrial levels. Curriculum participants are given a strong grounding in microscopic physics, which involves studying quantum physics and its applications in atomic, molecular, nuclear and solid state physics. Other major fields of physics such as optics and acoustics are also covered, as are advanced mathematics and information technology. The curriculum has a broad approach, typical of University Engineering studies in Belgium, so that successful graduates can seek employment in a wide diversity of fields.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "English" )
Program.create( university: uni1,
                category: cat9,
                name: "Master of science in Civil Engineering",
                price: 0,
                level: "Master",
                duration: 24,
                description: "This course in civil construction engineering at the ULB trains graduates for a broad range of jobs in the construction sector, qualifying them for positions in technical consultancies and supervisory centres (construction design), general companies (site management), administration, etc. The training given relies on the knowledge of the properties of materials used, the understanding of structural mechanisms (geotechnics, structure stability), and develops general skills in construction (project management, architectural integration, environmental aspects). The pedagogical methods used encourage teamwork on projects and enable participants to develop the essential skills for pursuing a rewarding career. Together, these two sets of qualities mean that the training provided on this programme offers skills which are both geared towards specific applications whilst being versatile at the same time.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "English" )
Program.create( university: uni1,
                category: cat9,
                name: "Master of science in Electrical Engineering",
                price: 0,
                level: "Master",
                duration: 24,
                description: "Electrical engineers trained at the ULB are well placed to respond to market needs from technical consultants, companies, administration departments and research centres. They are capable of analysing and setting up complex industrial processes, i.e. measuring physical quantities for electricity and transporting it remotely, drawing up control algorithms, assessing system failure risks and detecting them when they occur, creating human-machine interfaces and measuring the impact of devices they create on other electrical systems and the environment. Their training means that they can contribute to meeting the challenge of supplying constant high-quality electrical energy and of finding the most rational way to use it. Electricity is also an information vector (for data, voice communication and image transfer) in industrial processes and in our daily lives and this information needs to be produced, processed and transported. Electrical engineers possess a solid grounding in areas related to their field, such as electrotechnics, automatic control, instrumentation, signal processing, microelectronics, telecommunications, real time information technology and mathematics.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "English" )
Program.create( university: uni1,
                category: cat10,
                name: "Master in Agricultural Bioengineering",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The training meets the growing requirements of society, which are reflected in the constant expansion of bioengineering applications. The study programs are rooted in the field of environmental management, agro-ecosystems and all the living-based industrial activities. The highly multidisciplinary training allows students to develop their creativity and versatility to become operational in various jobs related to engineering and to life sciences. The Master in agricultural Engineering focuses on natural resources management in order to reconcile conservation and production of a variety of biomasses. It refines knowledge about the functioning of living matter at organisation levels in between those of organisms and the entire biosphere.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat10,
                name: "Master in Biochemistry and Molecular and Cell Biology",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The Master programme provides fundamental courses in biochemistry and molecular and cellular biology (90 credits) in the following disciplines: Molecular biology of the cell (cell growth and signaling, internal organisation and physiology, molecular biology of the gene) Molecular biology of multicellular organisms (immunology, developmental biology, neurobiology) Molecular microbiology (bacteriology, virology, parasitology) In addition, students must choose one of two focuses (30 credits): The research focus provides additional courses in bioinformatics and biotechnology, as well as additional practical training in the department's research laboratories. The teaching focus is intended for future teachers, with active and passive courses as well as work placements. Both focuses allow students to pursue a PhD programme.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat10,
                name: "Master in Environmental Bioengineering",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The training meets the objectives set by the society, evolving and lead by the ever widening range of bioengineering applications. The studies take their roots in the domains of environment management, agro-ecosystems and all the industrial activities based on living beings. The deeply multidisciplinary training helps the student to develop his creativity and his versatility in order to be functional in the various domain of engineering and biological sciences. This master centered on environmental engineering aims at applying the engineering science to improve the quality of the environment (modelling the transport of contaminants, optimize water treatment, analyze the environmental impacts of industrial processes).",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat6,
                name: "Master of science in Architecture and Engineering",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The Master in Architectural Engineering completes a study programme in which architecture and construction engineering are closely intertwined: the learning objectives combine the mastering of construction engineering with the skills to design architecture, that is: to create meaningful places that favour the well-being of their future users. Students are trained in the advanced scientific knowledge and attitudes proper to construction and architecture sciences and research. Students learn to design and detail complex sustainable buildings, with special focus on their functions, load bearing structure, their equipment and the technologies they require. Students are trained in the design of sustainable, large-scale architectural projects, aiming at creating added value in complex (mainly urban) situations. Students learn to coordinate the planning and on-site building of architecture projects: they acquire specialist knowledge on organizing and directing projects and on mastering its technical aspects. Students are trained in the design of sustainable, large-scale architectural projects, aiming at creating added value in complex (mainly urban) situations. Students learn to coordinate the planning and on-site building of architecture projects: they acquire specialist knowledge on organizing and directing projects and on mastering its technical aspects.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "English" )
Program.create( university: uni1,
                category: cat6,
                name: "Master in Architecture",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The years to be spent on a Master of Architecture complement the general training received in the Bachelor years. They give students the opportunity of following a more independent path, enabling them to better follow their personal aspirations, future engagements and specific areas of architectural design. The objective is to develop a pluralistic teaching, attentive to critical opinions, open to free thinking and innovative approaches to architecture, and deepening traditional architectural knowledge. It also aspires to be open to the numerous different facets of a rapidly evolving discipline, with a vast array of possibilities for specialisation and diversification. The MA course contributes to the training of architects and associated professionals capable of combining the necessary technical background, social responsibility and wealth of imagination. It offers broad opportunities for expression and creativity in a responsible way.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat6,
                name: "Master in Landscape Design",
                price: 0,
                level: "Master",
                duration: 24,
                description: "",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat12,
                name: "Master in Medecine, Professional focus",
                price: 0,
                level: "Master",
                duration: 36,
                description: "The major aim of the ULB's Master in Medicine is to provide scientific and professional training in order to produce highly skilled doctors with a sense of integrity and a profound understanding of human considerations. Students learn about their future career through contact with experienced practitioners right from the outset. The course gives successful graduates legally recognised access to the profession and provides them with the necessary skills to allow them to seek work in a broad range of fields,",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat12,
                name: "Master in Dentistry",
                price: 0,
                level: "Master",
                duration: 24,
                description: "At the end of the course, successful graduates will have both the professional skills (up-to-date knowledge, know-how, accuracy, scientific thoroughness, etc.) and the inter-personal skills (appropriate attitude, empathy, stress management, etc.) required to be a dental practitioner. Their knowledge of clinical and technical skills will enable them to go on to additional Masters courses in Dentistry (general dentistry, orthodontics, periodontology).",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat13,
                name: "Master in Motor skills : Physical Education",
                price: 0,
                level: "Master",
                duration: 24,
                description: "Graduates of this 120-credit master will be able to teach motor and psychomotor skills in the broad field of physical and athletic activities, and to adjust a training regimen depending on the participants' ages. Their responsibilities will also cover educating their students on healthy living. To this end, the programme provides essential skills in a variety of fields: teaching, technical, tactical, but also nutritional and psychological (stress management, mental preparation, etc.), while also maintaining a tight relationship between physiological and biomechanical concepts and their practical applications. A large part of the programme is dedicated to learning how to teach groups.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat13,
                name: "Master in Motor skills : General with focus Ostéopathie",
                price: 0,
                level: "Master",
                duration: 24,
                description: "Students in the Master in Motor Sciences may choose among a number of focuses: The focus on health, fitness, and nutrition aims to train professionals who can work on the ground and develop a fitness programme for people of different ages and physical abilities, or for people who are overweight, who have metabolic or cardiorespiratory disorders, etc. The focus on sports pathologies teaches students to provide consistent care for various pathologies related to athletic practice (from amateurs to professional athletes), and to identify and mitigate risk factors. Graduates will also be able to manage—together with the athlete's physicians and trainers—of the athlete's athletic rehabilitation after a lesion. The focus on osteopathy includes courses on functional pathologies of the locomotor system, covering clinical, diagnostic, and therapeutic aspects. Every course deals with techniques that may be subjected to scientific investigation. Particular emphasis is placed on exclusion diagnosis. The research focus is intended for students who wish to pursue research activities and eventually a PhD.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat14,
                name: "Master in Pharmacy",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The Master in Pharmacy is the final step leading to the qualification of pharmacist, which allows graduates to work in the profession. Since pharmacy offers many different opportunities, the course is not only tailored to the internationally recognised training standards for high street and hospital pharmacy, which is a traditional path for pharmacy graduates, but also covers a range of other activities which provide career opportunities, such as jobs in the pharmaceutical industry, analytical laboratories, (clinical biology, food/nutrition, toxicology, etc.), clinical pharmacy or scientific research in the fields of biomedical and pharmaceutical sciences. Their training means that pharmacists are really the only specialists in medicinal products working for patients and their health. Their theoretical and practical knowledge is highly appreciated since it focuses on promoting and protecting human health in line with particularly strict quality standards. As the person responsible for medicines which people take, from their design through to their use, pharmacists are thorough, careful scientists. They have particularly good analytical skills in their areas of competence and are perfectly integrated into modern society, which has high health care demands and is concerned about cost and accessibility issues.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French" )
Program.create( university: uni1,
                category: cat14,
                name: "Master in Biomedicine",
                price: 0,
                level: "Master",
                duration: 24,
                description: "Fulfil your ambitions by gaining a command of the concepts and techniques of human biology with a particular focus on pure or applied medical research aiming at the development of new diagnostic or therapeutic tools.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: ["French", "English"]
)
Program.create( university: uni1,
                category: cat15,
                name: "Master in Public Health",
                price: 0,
                level: "Master",
                duration: 24,
                description: "The goal of the Master in Public Health is to train public health professionals with a multi-faceted skill profile. Graduates of the programme will be able to draw up, implement, and assess projects related to health care and qualitative and/or quantitative research. They will also be able to manage and analyse databases and make use of health information in decision-making, and will possess the knowledge of epidemiology and methods (in terms of statistics and information technology) required to implement their decisions. They will also be able to provide training in health care management and environmental health. Studying public health involves an interdisciplinary approach: biostatistics, law, economy, sociology, psychology, food sciences, pedagogy, hygiene, epidemiology, management, politics, communication, etc.",
                application_deadline: "September 30th, 2020",
                student_profile: "",
                admission_requirements: "",
                language: "French"
)


user1 = User.create(email: "user1@email.com", password: "123456")
user2 = User.create(email: "user2@email.com", password: "123456")
user3 = User.create(email: "user3@email.com", password: "123456")

# favo1 = Favorite.create(user: user1, program: prog1)
# favo2 = Favorite.create(user: user1, program: prog2)

# review1 = Review.create(content: "This university has the worst professors don't apply here!", rating: 1, title: "prog1 review", program: prog1, user: user1)
# review2 = Review.create(content: "Really cool University! Recomended ^^", rating: 5, title: "prog2 review", program: prog2, user: user2)
# review3 = Review.create(content: "Good professors but reaaaly boring!", rating: 3, title: "prog3 review", program: prog3, user: user3)


mbti1 = Mbti.create(name: "The Supervisor", combination: [false, true, true, true], explanation: "Supervisors are hardworking traditionalists, eager to take charge in organizing projects and people. Orderly, rule-abiding, and conscientious, Supervisors like to get things done, and tend to go about projects in a systematic and methodical way. Therefore, we could recommend studying law to become a judge or lawyer, or become a project manager or insurance sales agent by studying economics and business.")
mbti2 = Mbti.create(name: "The Inspector", combination: [true, true, true, true], explanation: "Inspectors are responsible organizers, driven to create and enforce order within systems and institutions. These traits could could be achieved by studying economics and business to become an auditor, accountant or financial analyst. Inspectors are also neat and orderly and tend to have a procedure for everything they do. This may match the personality of a web developer that could have studied computer science or IT.")
mbti3 = Mbti.create(name: "The Provider", combination: [false, true, false, true], explanation: "Providers are conscientious helpers, sensitive to the needs of others and energetically dedicated to their responsibilities. This could define the personality of a healthcare worker that studied medicine. Providers are highly attuned to their emotional environment and attentive to both the feelings of others and the perception others have of them. This could be a good fit to study something in human or social sciences in order to help others.")
mbti4 = Mbti.create(name: "The Protector", combination: [true, true, false, true], explanation: "Protectors are industrious caretakers, loyal to traditions and organizations. They are practical, compassionate, and caring, and are motivated to provide for others and protect them. This could lead to a Protector to end up studying medicine to become a dentist for example or to study psychology or educational sciences to become an elementary school teacher.")
mbti5 = Mbti.create(name: "The Dynamo", combination: [false, true, true, false], explanation: "Dynamo’s are energetic thrill seekers who are at their best when putting out fires. They bring a sense of dynamic energy to their interactions with others and the world around them. This could eventually lead to them to study economics and business to become a banker or investor or even become an entertainment agent by studying event management.")
mbti6 = Mbti.create(name: "The Craftsperson", combination: [true, true, true, false], explanation: "Craftspeople are observant artisans with an understanding of mechanics and an interest in troubleshooting. This typically defines the personality of a civil engineer that could have studied engineering science. They approach their environments with a flexible logic, looking for practical solutions to the problems at hand. This could also define a data analyst that studied computer science and IT or even an economist that studied economist.")
mbti7 = Mbti.create(name: "The Performer", combination: [false, true, false, false], explanation: "Craftspeople are observant artisans with an understanding of mechanics and an interest in troubleshooting. This typically defines the personality of a civil engineer that could have studied engineering science. They approach their environments with a flexible logic, looking for practical solutions to the problems at hand. This could also define a data analyst that studied computer science and IT or even an economist that studied economist.")
mbti8 = Mbti.create(name: "The Composer", combination: [true, true, false, false], explanation: "Composers are gentle caretakers who live in the present moment and enjoy their surroundings with cheerful, low-key enthusiasm. They are flexible and spontaneous, and like to go with the flow to enjoy what life has to offer. Composers are warm and sensitive people who like to help people in tangible ways such as physical or massage therapist that may have studied movement and rehabilitation sciences. It could also define someone that is a fashion designer or landscape architect that studied arts and architecture. ")
mbti9 = Mbti.create(name: "The Commander", combination: [false, false, true, true], explanation: "Commanders are strategic leaders, motivated to organize change. They are quick to see inefficiency and conceptualize new solutions and enjoy developing long-range plans to accomplish their vision. They excel at logical reasoning and are usually articulate and quick-witted. This could typically define someone that studied economics and business to become an executive, a business consultant or a market research analyst but also someone that studied law to become a lawyer.")
mbti10 = Mbti.create(name: "The Mastermind", combination: [true, false, true, true], explanation: "Masterminds are analytical problem-solvers, eager to improve systems and processes with their innovative ideas. They have a talent for seeing possibilities for improvement, whether at work, at home, or in themselves. They are creative perfectionist who prefer to do things their own way. This typically defines a software developer that studied computer science and IT. But it could also define an economist, executive or investment banker that studied economics and business. ", icon: "kzfnehw8pwdscbhhtytz")
mbti11 = Mbti.create(name: "The Teacher", combination: [false, false, false, true], explanation: "Teachers are idealist organizers, driven to implement their vision of what is best for humanity. They often act as catalysts for human growth because of their ability to see potential in other people and their charisma in persuading others to their ideas.  This undoubtly reflects the profile of corporate coach or trainer that studied psychology and educational science but who could have also studied human and social sciences to become a public relation specialist or even a sales manager.")
mbti12 = Mbti.create(name: "The Counselor", combination: [true, false, false, true], explanation: "Counselors are creative nurturers with a strong sense of personal integrity and a drive to help others realize their potential. Creative and dedicated, they have a talent for helping others with original solutions to their personal challenges. This may reflect the personality of a Human Resources manager or a customer relation manager that studied human and social sciences. It could also define a therapist and mental health counselor that studied psychology and educational sciences.")
mbti13 = Mbti.create(name: "The Visionary", combination: [false, false, true, false], explanation: "Visionaries are inspired innovators, motivated to find new solutions to intellectually challenging problems. They are curious and clever, and seek to comprehend the people, systems, and principles that surround them. This typically defines an entrepreneur or someone that works in the marketing sector that studied economics and business. It may also reflect someone that studied human and social sciences to become politician or a political consultant.")
mbti14 = Mbti.create(name: "The Architect", combination: [true, false, true, false], explanation: "Architects are philosophical innovators, fascinated by logical analysis, systems, and design. They are preoccupied with theory, and search for the universal law behind everything they see. They want to understand the unifying themes of life, in all their complexity. They are independent and creative problem-solver such as a computer programmer that studied computer science and IT. It could also reflect someone that studied arts and architecture to become an architect or an economist that studied business and economist. ")
mbti15 = Mbti.create(name: "The Champion ", combination: [false, false, false, false], explanation: "Champions are people-centered creators with a focus on possibilities and a contagious enthusiasm for new ideas, people and activities. Energetic, warm, and passionate, champions love to help other people explore their creative potential. They are curious and confident creative types who see possibilities everywhere such as an event planner or a restaurateur that studied event management. Or someone that studied human and social sciences to become a journalist.")
mbti16 = Mbti.create(name: "The Healer", combination: [true, false, false, false], explanation: "Healers are imaginative idealists, guided by their own core values and beliefs. To a Healer, possibilities are paramount; the reality of the moment is only of passing concern. They see potential for a better future, and pursue truth and meaning with their own flair. Healers are sensitive idealist motivated by their deeper personal values writer, editor or graphical designer that studied arts and architecture. But also, psychologist and therapist that may have studied psychology and educational sciences. ")

Match.create(mbti: mbti1, category: cat1)
Match.create(mbti: mbti1, category: cat14)
Match.create(mbti: mbti1, category: cat4)
Match.create(mbti: mbti2, category: cat1)
Match.create(mbti: mbti2, category: cat16)
Match.create(mbti: mbti3, category: cat5)
Match.create(mbti: mbti3, category: cat12)
Match.create(mbti: mbti4, category: cat12)
Match.create(mbti: mbti4, category: cat7)
Match.create(mbti: mbti5, category: cat1)
Match.create(mbti: mbti5, category: cat17)
Match.create(mbti: mbti6, category: cat9)
Match.create(mbti: mbti6, category: cat16)
Match.create(mbti: mbti6, category: cat1)
Match.create(mbti: mbti7, category: cat6)
Match.create(mbti: mbti7, category: cat7)
Match.create(mbti: mbti8, category: cat13)
Match.create(mbti: mbti8, category: cat6)
Match.create(mbti: mbti9, category: cat1)
Match.create(mbti: mbti9, category: cat4)
Match.create(mbti: mbti10, category: cat1)
Match.create(mbti: mbti10, category: cat16)
Match.create(mbti: mbti11, category: cat5)
Match.create(mbti: mbti11, category: cat7)
Match.create(mbti: mbti12, category: cat5)
Match.create(mbti: mbti12, category: cat7)
Match.create(mbti: mbti13, category: cat1)
Match.create(mbti: mbti13, category: cat5)
Match.create(mbti: mbti14, category: cat16)
Match.create(mbti: mbti14, category: cat1)
Match.create(mbti: mbti14, category: cat6)
Match.create(mbti: mbti15, category: cat17)
Match.create(mbti: mbti15, category: cat5)
Match.create(mbti: mbti16, category: cat6)
Match.create(mbti: mbti16, category: cat13)
Match.create(mbti: mbti16, category: cat7)



puts "> data ready"

