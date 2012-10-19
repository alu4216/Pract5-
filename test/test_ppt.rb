
require "~/LPP/Pract5/lib/clase_ppt"
require "test/unit"

class TestPpt < Test::Unit::TestCase
  
	def setup
		@ppt_obj = Ppt.new()
	end

  def test_play
	
	@ppt_obj.juego_j('piedra')
	score = []
	30.times do
	@ppt_obj.juego_m
	score.push@ppt_obj.partida
        end
	assert(score.uniq.length >= 3, "score.uniq.length = #{score.uniq.length} score.length = #{score.length}")
  end

  def test_wrong_play
 	assert_raise(TypeError) {@ppt_obj.juego_j('pepino')}
  end

 def test_variety

        score = []
        30.times do
	var=@ppt_obj.tiradas.sample
	@ppt_obj.juego_m
	@ppt_obj.juego_j(var)
        score.push@ppt_obj.partida
        end
        assert(score.uniq.length >= 3, "score.uniq.length = #{score.uniq.length} score.length = #{score.length}")
  end

  
end
