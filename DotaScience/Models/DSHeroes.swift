//
//  Heroes.swift
//  DotaScience
//
//  Created by Бекжан on 29.03.2023.
//

import Foundation

struct DSHeroes: Codable{
    let id: Int
    let name: String
    let localized_name: String
    let primary_attr: String
    let attack_type: String
    let roles: [String]
    let img: String
    let icon: String
    let base_health: Int
    let base_health_regen: Int
    let base_mana: Int
    let base_mana_regen: Int
    let base_armor: Int
    let base_mr: Int
    let base_attack_min: Int
    let base_attack_max: Int
    let base_str: Int
    let base_agi: Int
    let base_int: Int
    let str_gain: Int
    let agi_gain: Int
    let int_gain: Int
    let attack_range: Int
    let projectile_speed: Int
    let attack_rate: Int
    let base_attack_time: Int
    let attack_point: Int
    let move_speed: Int
    let cm_enabled: Bool
    let legs: Int
    let day_vision: Int
    let night_vision: Int
    let hero_id: Int
    let turbo_picks: Int
    let turbo_wins: Int
    let pro_ban: Int
    let pro_win: Int
    let pro_pick: Int
}
