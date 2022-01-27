//
//  NewsArray.swift
//  1|_ Загржеевская Юлия
//
//  Created by Julie Zagr on 24.11.2021.
//

import UIKit

class NewsArray {

    var groups = [GroupsNews]()
    
    init() {
        setupArray()
    }

    func setupArray() {
    
    let news1 = GroupsNews(groupsNameForPost: Group(name: "Just Story", imageName: "Just Story"), date: "13.09.20", time: "15:30", textOfPostNews: "Девочки, забудьте про все способы поиска мужа. САМЫЙ ВЕРНЫЙ - это на свадьбе поймать букет. Я просматривала ленту свою, наткнулась на свадьбу Марины и вспомнила, что там я поймала букет. (Ради этого я даже туфли сняла, вы о чем). И ПОНЕСЛОСЬ. Знакомство с Владом через месяц и меньше, чем через год выхожу замуж. Хехе", imagePost: "Love")

    let news2 = GroupsNews(groupsNameForPost: Group(name: "UFC", imageName: "UFC"), date: "14.07.21", time: "07:08", textOfPostNews: "«Если они проведут 100 боев, то Дастин побьет его 100 раз». Хабиб разбирает провал Макгрегора... READ MORE", imagePost: "UFCNEWS")
    
    let news3 = GroupsNews(groupsNameForPost: Group(name: "DANKEST MEMS", imageName: "DANKEST MEMS"), date: "25.11.21", time: "11:30", textOfPostNews: "Жиза?", imagePost: "Fun")
    
    let news4 = GroupsNews(groupsNameForPost: Group(name: "Ужасы | Фильмы ужасов", imageName: "Ужасы | Фильмы ужасов"), date: "04.12.21", time: "23:23", textOfPostNews: "Aмepикaнcкaя Mэpи (2012): «Американская Мэри» — кроваво красочная история Мэри Мэнсон, которая работает в салоне и мастерски изменяет человеческие тела. Однако, совсем скоро у американской Мэри просыпается непреодолимое желание уродовать людские тела на свой вкус и без их согласия.", imagePost: "Horror")
    
    let news5 = GroupsNews(groupsNameForPost: Group(name: "Студия маникюра ПИLКИ", imageName: "Pilki"), date: "01.12.21", time: "09:03", textOfPostNews: "Ваши фотографии всегда в самое сердечко! Спасибо за отметки и доверие 💙", imagePost: "Nails")
    
    let news6 = GroupsNews(groupsNameForPost: Group(name: "Наука и Техника", imageName: "Наука и Техника"), date: "07.12.21", time: "09:03", textOfPostNews: "Улыбнись, тебя снимает Илон Маск", imagePost: "Sience")
    
        groups.append(news1)
        groups.append(news2)
        groups.append(news3)
        groups.append(news4)
        groups.append(news5)
        groups.append(news6)
    
    
    }
}

