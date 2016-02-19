//
//  DetailViewController.swift
//  ToDoListApp
//
//  Created by Shubha Manjunath on 10/19/15.
//  Copyright © 2015 Shubha Manjunath. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var toDoItems = ["Amsterdam", "Barcelona", "Berlin", "Budapest", "Dublin", "Edinburgh", "Florence", "Istanbul", "Lisbon", "London", "Madrid", "Monaco", "Paris", "Prague", "Rome", "St.Petersburg", "Stockholm", "Tuscany", "Venice", "Vienna"]
    
    var toDoImages = ["Amsterdam", "Barcelona", "Berlin", "Budapest", "Dublin", "Edinburgh", "Florence", "Istanbul", "Lisbon", "London", "Madrid", "Monaco", "Paris", "Prague", "Rome", "St.Petersburg", "Stockholm", "Tuscany", "Venice", "Vienna"]

    var describe = ["Amsterdam Amsterdam is also ideal as a romantic getaway for two or an educational excursion with the kids. With attractions that range from biking along a maze of canals to remembering the Holocaust through the eyes of Anne Frank; from exploring the swirling Expressionism of Van Gogh to lazing in the expansive Vondelpark, Amsterdam suits a variety of traveler tastes." , "Barcelona offers a unique blend of old and new architecture. The designs of Gaudi's Parc Güell and La Sagrada Família are impressive, and La Seu and Montjuïc Castle showcase the city's traditional side. When you tire of architecture, relax on the beach or sip sangria along Las Ramblas.", "Berlin England takes pleasure in London, the U.S. loves New York, France is slightly narcissistic about Paris, and once again, Germany proudly claims Berlin. More than two decades since the fall of the Berlin Wall, the city is basking in a cultural renaissance that is marking everything from museums to fashion, food and nightclubs. That's not to say that this city has forgotten its dark past; in fact, powerful attractions." , "Budapest This city appeals to many; you can step out of a thermal baths and right into a nightclubs (and then back into the bath). You should also save time to savor Budapest's culture, history, and natural beauty. It's more than just the political capital of Hungary." , "Dublin Like many modern cities, Dublin is a melting pot. Along with its traditional Irish culture, Dublin has been infiltrated by a host of glorious international influences. The city is the largest in Ireland, and its fast-growing immigrant population brings people from all over the world. The influence of these cultures is evident in the diverse and vibrant culinary scene that can be found here." , "Edinburgh  Surrounded by a rugged Scottish landscape, Edinburgh possesses a wealth of attractions. Visitors can stroll the Royal Mile, climb the nearby hills and tour ancient castles. Burrowed beside long-dormant volcanoes and reigning over green moorlands, Edinburgh (or Ed-n-bruh in Scots speech) is known for more than its staggering landscape. The Athens of the North or Auld Reekie, as Edinburgh is sometimes nicknamed, also claims a cast of near mythic characters: Rebel leader Sir William Wallace (aka Braveheart); the tragic Mary, Queen of Scots; the Enlightenment thinkers David Hume and Adam Smith." , "Florence This little city, tucked amid the Tuscan hills, casts a long shadow through history. The wellspring of the Renaissance,Firenze (or Florence) sheltered the powerful Medici family and inspired artists like Michelangelo (David) and Brunelleschi (the Duomo). If it weren’t for the fashionable Italians and chic shops lining Via Tornabuoni, you might think you had traveled back in time to the 14th century." , "Istanbul Bridging East and West -- Europe and Asia -- Istanbul possesses a richly complicated heritage. Once the capital of the Ottoman and Byzantine empires, this city's prestigious history has left us with many monuments to cherish. Plus it integrates its past and the present to create a unique mix of architecture; a glass skyscraper next to a Byzantine church or a colorful bazaar in the shadow of a shopping mall. The natural landscape is also impressive." , "Lisbon specializes in lulling tourists into a laid-back charm. Perched atop seven hills, its alleyways wind between bleached-out limestone buildings. Fanciful St. George's Castle peeks out to the skyline, lending an Old World mystery to the burgeoning cosmopolitan city. And despite the modern sleek buildings that are slowly rising throughout the city, village life holds strong." , "London The English writer Samuel Johnson famously said, You find no man, at all intellectual, who is willing to leave London. No, Sir, when a man is tired of London, he is tired of life; for there is in London all that life can afford. More than two centuries have passed since Johnson's era, but his words still ring true. Life in London is invigorating, and travelers find that one visit isn't enough to experience everything this two-millennia-old city has to offer." , "Madrid In many ways, Madrid is similar to many other international metropolises — it's Spain's largest city, has the largest population, is the capital and is the center for international business. But, before you jump to conclusions, hush … if you listen carefully, you can hear the gentle melodies of the Spanish guitar, the swish of a flamenco dancer's skirt, and the happy laughter from a midday meal infused with too many glasses of sangria." , "Monaco American sweetheart Grace Kelly married Monaco's prince. Perhaps you have a need for speed? The Grand Prix zooms through this principality each year. Or you might delight in seeing and being seen? Monaco is the getaway of the jet-set, or should we say yacht-set? Maybe you have 007 fever, Several James Bond films were set at the Monte-Carlo Casino. You might also visit for the Monégasque." , "Paris The City of Light draws millions of visitors every year with its unforgettable ambiance. The gentle River Seine rambles through the city, flanked by stately museums, centuries-old churches, and blocks of Rococo- and Neoclassic-design architecture, further enhanced by charming trees and glowing streetlamps." , "Prague Visiting Prague is like stepping onto the set of a fairy tale. The gothic architecture impresses visitors of all ages. And the city's love of music is contagious. You'll also appreciate Prague's affordability compared to other captivating European destinations." , "Rome is a can't-miss spot on your European tour. Rome, the city of seven hills, enjoyed a mythic beginning. The aroma of fresh Italian cooking wafts through alleys, locals are adorned in couture, and historic sites sit at every turn. The Colosseum and St. Peter's Basilica are essential attractions for any world traveler." , "St. Petersburg St. Petersburg stands at the geographic and cultural borders of the west and east. And though the city is inspired by the intricate and ordered architecture of Western Europe, it is still infused with a vibrant and persevering Russian spirit. St. Petersburg largely owes its dualistic nature to its founder, Peter the Great, an unabashed lover of all things European who commissioned the city's streets and architecture to resemble his favorite western cities." , "Stockholm One of the most visually arresting cities in the world, Stockholm is set upon a series of bays, rivers and waterways of 14 roughly connected islands containing an assortment of architectural and cultural oddities. From the quaint and pristinely preserved Gamla Stan, or Old Town (one of the few areas in Europe untouched by World War II), to the unabashed modernity of the buildings at Hötorget, Stockholm is a sprawling, floating, beautiful visual drama." , "Tuscany This renowned culinary region is full of quaint eateries serving up traditional Italian fare. You can savor Tuscany's rich flavors at charming restaurants in Florence, Siena and Cinque Terre, or head straight to the source on a winery or olive grove tour." , "Venice may conjure images of romantic gondola rides down the Grand Canal, but this City of Water isn't only for swooning lovebirds. With an abundance of theaters, churches, historic sites and notable eateries, all types of travelers will enjoy Venice's charms." , "Vienna This storied city is best known for its music and monarchs. While in Vienna, explore the Habsburg's Schonbrunn Palace and stroll the narrow streets of the Inner Street. If you're an art-lover, head to the Museums Quartier to tour the Museum of Modern Art."]
    
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailDescription: UITextView!
    
    var infoFromMyTableView : String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let index = toDoItems.indexOf(infoFromMyTableView)
        detailImage.image = UIImage(named: toDoImages[index!])
        detailDescription.text = describe[index!]
        // Do any additional setup after loading the view.
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
