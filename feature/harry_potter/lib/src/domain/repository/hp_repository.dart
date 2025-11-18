import 'package:harry_potter/src/domain/model/character.dart';
import 'package:injectable/injectable.dart';

@injectable
class HPRepository {
  List<Character> getCharacters() => _characters;
  Character getCharacter(String name) {
    return Character(
      name: name,
      biography: '$name is a character in Harry Potter',
    );
  }

  final List<Character> _characters = const [
    Character(
      name: 'Harry Potter',
      biography:
          '''Harry James Potter is a fictional character and the titular protagonist in J. K. Rowling's series of eponymous novels. The majority of the books' plot covers seven years in the life of the orphan Harry, who, on his eleventh birthday, learns he is a wizard. Thus, he attends Hogwarts School of Witchcraft and Wizardry to practise magic under the guidance of the kindly headmaster Albus Dumbledore and other school professors along with his best friends Ron Weasley and Hermione Granger. Harry also discovers that he is already famous throughout the novel's magical community, and that his fate is tied with that of Lord Voldemort – the internationally feared Dark Wizard and murderer of his parents, Lily and James. The book and film series revolve around Harry's struggle to adapt to the wizarding world and defeat Voldemort.''',
    ),
    Character(
      name: 'Ron Weasley',
      biography:
          '''Ronald Bilius Weasley is a fictional character in J. K. Rowling's Harry Potter fantasy novel series. His first appearance was in the first book of the series, Harry Potter and the Philosopher's Stone, as the best friend of Harry Potter and Hermione Granger. He is a member of the Weasley family, a pure blood family that resides in "The Burrow" outside Ottery St. Catchpole. Being the only member of the three main characters raised in magical society, he also provides insight into the Wizarding World's magical customs and traditions. Along with Harry and Hermione, he is a member of Gryffindor house and is present for most of the action throughout the series.''',
    ),
    Character(
      name: 'Hermione Granger',
      biography:
          '''Hermione Jean Granger is a fictional character in J. K. Rowling's Harry Potter series. She first appears in the novel Harry Potter and the Philosopher's Stone (1997), as a new student on her way to Hogwarts. After Harry and Ron save her from a mountain troll in the girls' restroom, she becomes best friends with them and often uses her quick wit, deft recall, and encyclopaedic knowledge to lend aid in dire situations. Rowling has stated that Hermione resembles herself as a young girl, with her insecurity and fear of failure.''',
    ),
    Character(
      name: 'Albus Dumbledore',
      biography:
          '''Albus Percival Wulfric Brian Dumbledore is a fictional character in J. K. Rowling's Harry Potter series. For most of the series, he is the headmaster of the wizarding school Hogwarts. As part of his backstory, it is revealed that he is the founder and leader of the Order of the Phoenix, an organisation dedicated to fighting Lord Voldemort, the main antagonist of the series.

Dumbledore was portrayed by Richard Harris in the film adaptations of Harry Potter and the Philosopher's Stone (2001) and Harry Potter and the Chamber of Secrets (2002), however Harris died from Hodgkin's disease in August 2002 before the release of Chamber of Secrets three months later on November 15th. After Harris' death, Michael Gambon portrayed Dumbledore in the six remaining Harry Potter films from 2004 to 2011. Jude Law portrayed Dumbledore as a middle-aged man in the prequel films Fantastic Beasts: The Crimes of Grindelwald (2018) and Fantastic Beasts: The Secrets of Dumbledore (2022).

Rowling stated she chose the name Dumbledore, which is a dialectal word for "bumblebee", because of Dumbledore's love of music: she imagined him walking around "humming to himself a lot"''',
    ),
    Character(
      name: 'Lord Voldemort',
      biography:
          '''Lord Voldemort is a sobriquet for Tom Marvolo Riddle, a character and the main antagonist in J. K. Rowling's series of Harry Potter novels. The character first appeared in Harry Potter and the Philosopher's Stone, which was published in 1997, and returned either in person or in flashbacks in each book and its film adaptation in the series except the third, Harry Potter and the Prisoner of Azkaban, in which he is only mentioned.

Voldemort is the archenemy of Harry Potter, who according to a prophecy has "the power to vanquish the Dark Lord". He attempts to murder the boy, but instead kills his parents, Lily and James Potter, and leaves Harry with a scar on his forehead in the shape of a lightning bolt. Nearly every witch or wizard dares not utter his name and refers to him instead with such monikers as "You-Know-Who", "He Who Must Not Be Named", or "the Dark Lord". Voldemort's obsession with blood purity signifies his aim to rid the wizarding world of Muggle (non-magical) heritage and to conquer both worlds, Muggle and wizarding, to achieve pure-blood dominance. Through his mother's family, he is the last descendant of the wizard Salazar Slytherin, one of the four founders of Hogwarts School of Witchcraft and Wizardry. He is the leader of the Death Eaters, a group of evil wizards and witches dedicated to ridding the Wizarding World of Muggles and establishing Voldemort as its supreme ruler.''',
    ),
  ];
}
