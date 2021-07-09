;;membuat variabel rancangan yang digunakan
(deftemplate node
   (slot name)
   (slot question)
   (slot A)
   (slot B)
   (slot C)
   (slot D)
   (slot E)
   (slot F)
   (slot G)
   (slot H)
   (slot next-question) 	
)
;;membuat variabel rancangan untuk aturan
(deftemplate rule 
   (multislot if)
   (multislot then))
;;membuat variabel rancangan untuk type value
(deftemplate typeValue
 (slot typeName)
 (slot value)
 (slot personalityType)
)

;;memasukkan fakta-fakta yang diisi ke program ketika fungsi reset dipanggil
(deffacts initial
(node (name Q1) (question "Question 1") (A "Apakah anak suka membaca?") (B "anak suka memecahkan masalah soal perhitungan") (C "anak menikmati kegiatan menggambar") (D "anak suka melakukan kegiatan olahraga") (E "anak suka memainkan alat musik") (F "anak senang bekerja secara tim") (G "anak sering melamun") (H "anak suka melakukan kegiatan bercocok tanam") (next-question Q2))
(node (name Q2) (question "Question 2") (A "anak suka menulis") (B "anak menikmati pelajaran matematika") (C "anak senang membuat coretan-coretan di kertas") (D "anak menggunakan banyak gerakan ketika menjelaskan sesuatu") (E "anak suka bernyanyi") (F "anak dapat melakukan diskusi") (G "anak cenderung lebih suka bermain sendiri") (H "anak senang melakukan kegiatan rekreasi ke alam terbuka") (next-question Q3))
(node (name Q3) (question "Question 3") (A "anak mudah menceritakan suatu hal") (B "anak menikmati permainan seperti teka-teki dan pencarian kata") (C "anak menikmati permainan seperti teka-teki dan pencarian kata") (D "anak cenderung aktif menggerakan tangannya ketik ia diam") (E "anak suka mendengarkan sebuah irama musik") (F "anak senang bertemu dengan orang baru") (G "anak dapat bertanggung jawab atas tindakan yang dilakukannya sendiri") (H "anak suka memelihara binatang") (next-question Q4))
(node (name Q4) (question "Question 4") (A "anak mudah berkomunikasi dengan baik") (B "anak suka mencari tahu bagaimana cara kerja sebuah benda") (C "anak senang ketika diajak mendatangi tempat rekreasi") (D "anak mudah menirukan sesuatu gerakan") (E "anak dapat menghafal nada dari sebuah lagu") (F "anak dapat menjadi seorang pemimpin diantara teman-temannya") (G "anak memiliki tekad yang kuat") (H "anak senang mempelajari tentang makhluk hidup") (next-question Q5))
(node (name Q5) (question "Question 5") (A "anak mudah mengekspresikan perasaannya") (B "anak sering memiliki ide-ide unik ketika bermain") (C "anak suka menempel gambar buatannya di ruangan") (D "anak suka menari") (E "anak mudah memahami sesuatu dengan bantuan iringan musik") (F "anak senang mendengarkan orang lain") (G "anak memiliki rasa percaya diri") (H "anak senang menonton tayangan tentang alam") (next-question nil))


;;hasil akhir yang akan dikeluarkan
;; A = Linguistik
;; B = Logical
;; C = Visual
;; D = Kinestik
;; E = Musical
;; F = Interpersonal
;; G = Intrapersonal
;; H = Naturalis

;;pengenalan hasil akhir
(typeValue (typeName A) (value 0) (personalityType "Linguistik")) 
(typeValue (typeName B) (value 0) (personalityType "Logical")) 
(typeValue (typeName C) (value 0) (personalityType "Visual")) 
(typeValue (typeName D) (value 0) (personalityType "Kinestik")) 
(typeValue (typeName E) (value 0) (personalityType "Musical")) 
(typeValue (typeName F) (value 0) (personalityType "Interpersonal")) 
(typeValue (typeName G) (value 0) (personalityType "Intrapersonal")) 
(typeValue (typeName H) (value 0) (personalityType "Naturalis")) 

(currentQ Init)
)

(defrule InitialPersonList   
   ?Q <- (currentQ Init) 	
=>
   (retract ?Q)
   (assert (currentQ Q1))
)

;;membuat fungsi program
(deffunction Value-One-Option(?option)
   (printout t ?option " (select 1...4) "crlf)
   (bind ?answer (read))                      
   (while (and (integerp ?answer)(or (< ?answer 1) (> ?answer 4))) 
     (printout t ?option " (select 1...4) "crlf)
     (bind ?answer (read)))                      
   (return ?answer))   

;;membuat aturan untuk menampilkan pertanyaann fakta ke user interface
(defrule askQ   
   ?f1 <- (currentQ ?currentNode)
   (node (name ?currentNode) (question ?Q) (A ?A) (B ?B) (C ?C) (D ?D) (E ?E) (F ?F) (G ?G) (H ?H) (next-question ?nextNode))
   ?fA <- (typeValue (typeName A) (value ?AVal))
   ?fB <- (typeValue (typeName B) (value ?BVal))
   ?fC <- (typeValue (typeName C) (value ?CVal))
   ?fD <- (typeValue (typeName D) (value ?DVal))
   ?fE <- (typeValue (typeName E) (value ?EVal))
   ?fF <- (typeValue (typeName F) (value ?FVal))
   ?fG <- (typeValue (typeName G) (value ?GVal))
   ?fH <- (typeValue (typeName H) (value ?HVal))
   
=>
   (printout t ?Q ") Masukkan angka '4' jika perilaku sangat sesuai; masukkan '3' jika perilaku 
   sesuai; masukkan 2' jika perilaku kurang sesuai, dan masukkan '1' jika tidak sesuai " crlf)
   (printout t "___" ?A crlf)
   (printout t "___" ?B crlf)
   (printout t "___" ?C crlf)
   (printout t "___" ?D crlf)
   (printout t "___" ?E crlf)
   (printout t "___" ?F crlf)
   (printout t "___" ?G crlf)
   (printout t "___" ?H crlf)
   (printout t "*********************" crlf)

   (bind ?AAns (Value-One-Option ?A))                      
   (bind ?BAns (Value-One-Option ?B))                      
   (bind ?CAns (Value-One-Option ?C))                      
   (bind ?DAns (Value-One-Option ?D))                      
   (bind ?EAns (Value-One-Option ?E))                      
   (bind ?FAns (Value-One-Option ?F))                      
   (bind ?GAns (Value-One-Option ?G))                      
   (bind ?HAns (Value-One-Option ?H))                      


   ;(bind ?nextNode (ValidateResponses ?AAns ?BAns ?CAns ?DAns ?EAns ?FAns ?GAns ?HAns ?currentNode ?nextNode))                      

   (if (neq ?nextNode ?currentNode) then
  (modify ?fA (value (+ ?AVal ?AAns)))
  (modify ?fB (value (+ ?BVal ?BAns)))
  (modify ?fC (value (+ ?CVal ?CAns)))
  (modify ?fD (value (+ ?DVal ?DAns)))
  (modify ?fE (value (+ ?EVal ?EAns)))
  (modify ?fF (value (+ ?FVal ?FAns)))
  (modify ?fG (value (+ ?GVal ?GAns)))
  (modify ?fH (value (+ ?HVal ?HAns)))
    )
    
   (retract ?f1)
   (assert (currentQ ?nextNode))   
)

;;membuat aturan untuk menjumlahkan nilai setiap fakta
(defrule findAns   
   ?f1 <- (currentQ nil)
   ?fA <- (typeValue (typeName A) (value ?aVal))
   ?fB <- (typeValue (typeName B) (value ?bVal))
   ?fC <- (typeValue (typeName C) (value ?cVal))
   ?fD <- (typeValue (typeName D) (value ?dVal))
   ?fE <- (typeValue (typeName E) (value ?eVal))
   ?fF <- (typeValue (typeName F) (value ?fVal))
   ?fG <- (typeValue (typeName G) (value ?gVal))
   ?fH <- (typeValue (typeName H) (value ?hVal))	  
=>
   (retract ?f1)
   (assert (currentQ sort))	
   (assert (personalityList ?fA ?fB ?fC ?fD ?fE ?fF ?fG ?fH))

   (printout t "Results: " crlf)
   (printout t "Linguistik: " ?aVal crlf)
   (printout t "Logical: " ?bVal crlf)
   (printout t "Visual: " ?cVal crlf)
   (printout t "Kinestik: " ?dVal crlf)
   (printout t "Musical: " ?eVal crlf)
   (printout t "Interpersonal: " ?fVal crlf)
   (printout t "Intrapersonal: " ?gVal crlf)
   (printout t "Naturalis: " ?hVal crlf)
   
)