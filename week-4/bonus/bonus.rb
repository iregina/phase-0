

japanese_history_1 = ["The First Novelist", "Shikibu Murasaki", 1000, "She wrote the world's first novel, the Tale of Genji, between 1000 and 1012 and was a lady-in-waiting in the Heian Imperial court."]

japanese_history_2 = ["The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years."]


award_winning_essay_1 = "Shikibu Murasaki was an important person in 1000. She did a lot. I want to learn more about her. She wrote the world's first novel, the Tale of Genji, between 1000 and 1012 and was a lady-in-waiting in the Heian Imperial court. Shikibu's contribution is important."

award_winning_essay_2 = "Ieyasu Tokugawa was an important person in 1603. He did a lot. I want to learn more about him. His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years. Tokugawa's contribution is important."

def essay_writer(title, topic, date, thesis_statement)
  if title == "The First Novelist"
  	puts award_winning_essay_1
  else title == "The First Shogun"
  	puts award_winning_essay_2
  end
end

essay_writer(japanese_history_1)