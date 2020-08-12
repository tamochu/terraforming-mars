class Game < ApplicationRecord
  has_many :player
  has_many :deck
  has_many :game_log
  has_many :tile
  has_many :token
  
  MATERIAL = "material"
  PROJECT = "project"
  WOOD = "wood"
  TITANIUM = "titanium"
  
  def board
    nodisp_list = [
      {
        x: 1,
        y: 0
      },
      {
        x: 7,
        y: 0
      },
      {
        x: 8,
        y: 0
      },
      {
        x: 0,
        y: 1
      },
      {
        x: 7,
        y: 1
      },
      {
        x: 8,
        y: 1
      },
      {
        x: 0,
        y: 2
      },
      {
        x: 8,
        y: 2
      },
      {
        x: 8,
        y: 3
      },
      {
        x: 8,
        y: 5
      },
      {
        x: 0,
        y: 6
      },
      {
        x: 8,
        y: 6
      },
      {
        x: 0,
        y: 7
      },
      {
        x: 7,
        y: 7
      },
      {
        x: 8,
        y: 7
      },
      {
        x: 1,
        y: 8
      },
      {
        x: 7,
        y: 8
      },
      {
        x: 8,
        y: 8
      }
    ]
    sea_list = [
      {
        x: 3,
        y: 0
      },
      {
        x: 5,
        y: 0
      },
      {
        x: 6,
        y: 0
      },
      {
        x: 6,
        y: 1
      },
      {
        x: 7,
        y: 3
      },
      {
        x: 3,
        y: 4
      },
      {
        x: 4,
        y: 4
      },
      {
        x: 5,
        y: 4
      },
      {
        x: 5,
        y: 5
      },
      {
        x: 6,
        y: 5
      },
      {
        x: 7,
        y: 5
      },
      {
        x: 6,
        y: 8
      }
    ]
    resources_list = [
      {
        x: 2,
        y: 0,
        resources: [ MATERIAL, MATERIAL ]
      },
      {
        x: 3,
        y: 0,
        resources: [ MATERIAL, MATERIAL ]
      },
      {
        x: 5,
        y: 0,
        resources: [ PROJECT ]
      },
      {
        x: 2,
        y: 1,
        resources: [ MATERIAL ]
      },
      {
        x: 6,
        y: 1,
        resources: [ PROJECT, PROJECT ]
      },
      {
        x: 1,
        y: 2,
        resources: [ PROJECT ]
      },
      {
        x: 7,
        y: 2,
        resources: [ MATERIAL ]
      },
      {
        x: 0,
        y: 3,
        resources: [ WOOD, TITANIUM ]
      },
      {
        x: 1,
        y: 3,
        resources: [ WOOD ]
      },
      {
        x: 2,
        y: 3,
        resources: [ WOOD ]
      },
      {
        x: 3,
        y: 3,
        resources: [ WOOD ]
      },
      {
        x: 4,
        y: 3,
        resources: [ WOOD, WOOD ]
      },
      {
        x: 5,
        y: 3,
        resources: [ WOOD ]
      },
      {
        x: 6,
        y: 3,
        resources: [ WOOD ]
      },
      {
        x: 7,
        y: 3,
        resources: [ WOOD, WOOD ]
      },
      {
        x: 0,
        y: 4,
        resources: [ WOOD, WOOD ]
      },
      {
        x: 1,
        y: 4,
        resources: [ WOOD, WOOD ]
      },
      {
        x: 2,
        y: 4,
        resources: [ WOOD, WOOD ]
      },
      {
        x: 3,
        y: 4,
        resources: [ WOOD, WOOD ]
      },
      {
        x: 4,
        y: 4,
        resources: [ WOOD, WOOD ]
      },
      {
        x: 5,
        y: 4,
        resources: [ WOOD, WOOD ]
      },
      {
        x: 6,
        y: 4,
        resources: [ WOOD, WOOD ]
      },
      {
        x: 7,
        y: 4,
        resources: [ WOOD, WOOD ]
      },
      {
        x: 8,
        y: 4,
        resources: [ WOOD, WOOD ]
      },
      {
        x: 0,
        y: 5,
        resources: [ WOOD ]
      },
      {
        x: 1,
        y: 5,
        resources: [ WOOD, WOOD ]
      },
      {
        x: 2,
        y: 5,
        resources: [ WOOD ]
      },
      {
        x: 3,
        y: 5,
        resources: [ WOOD ]
      },
      {
        x: 4,
        y: 5,
        resources: [ WOOD ]
      },
      {
        x: 5,
        y: 5,
        resources: [ WOOD ]
      },
      {
        x: 6,
        y: 5,
        resources: [ WOOD ]
      },
      {
        x: 7,
        y: 5,
        resources: [ WOOD ]
      },
      {
        x: 6,
        y: 6,
        resources: [ WOOD ]
      },
      {
        x: 1,
        y: 7,
        resources: [ MATERIAL, MATERIAL ]
      },
      {
        x: 3,
        y: 7,
        resources: [ PROJECT ]
      },
      {
        x: 4,
        y: 7,
        resources: [ PROJECT ]
      },
      {
        x: 6,
        y: 7,
        resources: [ TITANIUM ]
      },
      {
        x: 2,
        y: 8,
        resources: [ MATERIAL ]
      },
      {
        x: 3,
        y: 8,
        resources: [ MATERIAL, MATERIAL ]
      },
      {
        x: 6,
        y: 8,
        resources: [ TITANIUM, TITANIUM ]
      },
    ]
    Array.new(9).map.with_index{ |y, y_idx|
      Array.new(9).map.with_index{ |x, x_idx|
        board_element = {
          classes: [],
          label: "",
          resources: []
        }
        if nodisp_list.any? { |nd| nd[:y] == y_idx && nd[:x] == x_idx }
          board_element[:classes].push("nodisp")
        else
          if y_idx == 0 && x_idx == 0
            board_element[:label] = "フォボス宇宙港"
          elsif y_idx == 8 && x_idx == 0
            board_element[:label] = "ガニメデ・コロニー"
          elsif y_idx == 4 && x_idx == 2
            board_element[:label] = "ノクティス市"
          end
          if sea_list.any? { |nd| nd[:y] == y_idx && nd[:x] == x_idx }
            board_element[:classes].push("sea")
          end
          resources = resources_list.find { |r| r[:x] == x_idx && r[:y] == y_idx }
          unless resources.nil?
            board_element[:resources] = resources[:resources]
          end
        end
        board_element
      }
    }
  end
end
