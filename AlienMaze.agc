function CreateBackground ( )
        LoadImage(1, "space.png")
	CreateSPrite(1, 1)
	FixSpriteToScreen(1, 1)
endfunction

function CreateStarField()
	LoadImage( 4, "space/particle.png")

	CreateParticles(1, 550.0, 0.0)
	SetParticlesImage(1, 4)
	SetParticlesStartZone(1, 0, 10, 0, 400)
	SetParticlesDiretcion(1, -50, 0)
	SetParticlesLife(1, 15)
	SetParticlesSize(1,4)
	SetParticlesAngle(1, 0)
	SetParticlesFrequency(1, 00)
	SetParticlesVelocityRange(1, 0.5, 4)
	FixParticlesToScreen(1,1)
endfunction 

	maze = CreateSprite(LoadImage("maze.png"))
	SetSpritePosition(maze, 300, 250)

	robot = CreateSprite(LoadImage("maze.png"))
	SetSpritePosition(robot, 250, 250)

		


