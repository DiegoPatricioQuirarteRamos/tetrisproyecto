#include <Sounds.hpp>

Sounds::Sounds(){
	music.openFromFile("./assets/music/music.ogg");
	music.setLoop(true);
	music.setVolume(20);
	
	if(!lineSoundBuffer.loadFromFile("./assets/music/line.ogg")){
		cout<<"Error al cargar sonido"<<endl;
	}
	
	if(!newScoreSoundBuffer.loadFromFile("./assets/music/newScore.ogg")){
		cout<<"Error al cargar sonido"<<endl;
	}
	
	if(!gameOverSoundBuffer.loadFromFile("./assets/music/gameOver.ogg")){
		cout<<"Error al cargar sonido"<<endl;
	}
	lineSound.setBuffer(lineSoundBuffer);
	newScoreSound.setBuffer(newScoreSoundBuffer);
	gameOverSound.setBuffer(gameOverSoundBuffer);
}

void Sounds::PlayMusic(){
	music.play();
}

void Sounds::PauseMusic(){
	music.pause();
}

void Sounds::PlayLine(){
	lineSound.play();
}

void Sounds::PlayNewScore(){
	newScoreSound.play();
}
void Sounds::PlayGameOver(){
	gameOverSound.play();
}
