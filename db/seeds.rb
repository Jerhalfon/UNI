# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "> creating data"

Favorite.delete_all
Review.delete_all
Program.delete_all
University.delete_all
Location.delete_all
Category.delete_all
User.delete_all


loca1 = Location.create(country: "Belgium", city: "Brussels")
loca2 = Location.create(country: "Belgium", city: "Antwerp")
loca3 = Location.create(country: "Belgium", city: "Namur")
loca4 = Location.create(country: "England", city: "London")
loca5 = Location.create(country: "Belgium", city: "Leuven")

url1 = "https://images.unsplash.com/photo-1527891751199-7225231a68dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
uni1 = University.create(name: "ULB", location: loca1)
uni1.remote_photo_url = url1
uni1.save

url2 = "https://images.unsplash.com/photo-1537888692311-8a7fb3e9f374?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80"
uni2 = University.create(name: "Universiteit van Antwerpen", location: loca2)
uni2.remote_photo_url = url2
uni2.save

url3 = "https://images.unsplash.com/photo-1474650919751-b7e21a1b180f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=1650&q=80"
uni3 = University.create(name: "Université de Namur", location: loca3)
uni3.remote_photo_url = url3
uni3.save

url4 = "https://images.unsplash.com/photo-1474650919751-b7e21a1b180f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=1650&q=80"
uni4 = University.create(name: "Université catholique de Louvain", location: loca5)
uni4.remote_photo_url = url4
uni4.save


cat1 = Category.create(name: "Economics and Business")
cat2 = Category.create(name: "Theology and Religious Studies")
cat3 = Category.create(name: "Philosophy")
cat4 = Category.create(name: "Law")
cat5 = Category.create(name: "Human and Social Sciences")
cat6 = Category.create(name: "Arts")
cat7 = Category.create(name: "Psychology and Educational Sciences")
cat8 = Category.create(name: "Science")
cat9 = Category.create(name: "Engineering Science")
cat10 = Category.create(name: "Bioscience")
cat11 = Category.create(name: "Architecture")
cat12 = Category.create(name: "Medicine")
cat13 = Category.create(name: "Movement and Rehabilitation Sciences")
cat14 = Category.create(name: "Pharmaceutical")
cat15 = Category.create(name: "Public Health")


prog1 = Program.create( university: uni1,
                        category: cat1,
                        name: "Business Administration",
                        price: "0",
                        level: "Undergraduate",
                        duration: "24",
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")
prog2 = Program.create( university: uni2,
                        category: cat2,
                        name: "European Law",
                        price: "69",
                        level: "Undergraduate",
                        duration: "12",
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")
prog3 = Program.create( university: uni3,
                        category: cat2,
                        name: "International Law",
                        price: "69",
                        level: "Undergraduate",
                        duration: "12",
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")
prog4 = Program.create( university: uni1,
                        category: cat2,
                        name: "Belgian Law",
                        price: "100",
                        level: "Undergraduate",
                        duration: "12",
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")
prog5 = Program.create( university: uni2,
                        category: cat2,
                        name: "European Law", price: "69",
                        level: "Undergraduate",
                        duration: "12",
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")
prog6 = Program.create( university: uni3,
                        category: cat3,
                        name: "International Relations",
                        price: "420",
                        level: "Graduate",
                        duration: "24",
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")
prog7 = Program.create( university: uni2,
                        category: cat2,
                        name: "Fiscal Law",
                        price: "",
                        level: "Undergraduate",
                        duration: "12",
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")
prog8 = Program.create( university: uni2,
                        category: cat2,
                        name: "French Law",
                        price: "0",
                        level: "Undergraduate",
                        duration: "12",
                        description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")

# programs at UCL

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
                        category: cat11,
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
                        category: cat11,
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







user1 = User.create(email: "user1@email.com", password: "123456")
user2 = User.create(email: "user2@email.com", password: "123456")
user3 = User.create(email: "user3@email.com", password: "123456")

favo1 = Favorite.create(user: user1, program: prog1)
favo2 = Favorite.create(user: user1, program: prog2)

review1 = Review.create(content: "This university has the worst professors don't apply here!", rating: 1, title: "prog1 review", program: prog1, user: user1)
review2 = Review.create(content: "Really cool University! Recomended ^^", rating: 5, title: "prog2 review", program: prog2, user: user2)
review3 = Review.create(content: "Good professors but reaaaly boring!", rating: 3, title: "prog3 review", program: prog3, user: user3)

puts "> data ready"



