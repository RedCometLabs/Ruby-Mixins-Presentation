!SLIDE 
#Enumerable

    @@@ Ruby
    class Xmen
      include Enumerable

      attr_accessor :team

      def initialize(team_members)
        @team = team_members
      end
      
      # must implement each method 
      def each &block
        @team.each{|xman| block.call(xman)}
      end
     
    end

!SLIDE smaller
#Enumerable
    @@@ Ruby
      xmen = Xmen.new ["Wolverine", "Storm", "Rogue", "Gambit"]

      xmen.first #=> Wolverine
      xmen.sort  #=> Gambit, Rogue, Storm, Wolverine

!SLIDE
# Mixins in the wild
[cool pic here]

!SLIDE
# Mongoid

    @@@ Ruby
      class Artist
        include Mongoid::Document
        field :name, type: String
        embeds_many :instruments
      end

!SLIDE small
# Mongoid

    @@@ Ruby
      class River
        include Mongoid::Document
        include Mongoid::Spacial::Document

        field :name, type: String
        field :source, type: Array, spacial: true

        spacial_index :source
      end

!SLIDE 
#CanCan
    
    @@@ Ruby

      class Ability
        include CanCan::Ability

        def initialize(user)
          
          if user.admin?
            can :manage, :all
          else
            can :read, :all
          end
        
        end
      end

