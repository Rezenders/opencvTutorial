# opencvTutorial
Breve tutorial de instalação e utilização da opencv.

# Instalação

Arch Linux:

```$ pacman -S base-devel opencv```

# Tutorial

## Conversão de RGB para escala de cinza

Exemplo de conversão de cores em rgb2gray.cpp

Esta parte do código é responsável por incluir as bibliotecas necessárias para realizar a conversão de cores.
```
#include <opencv2/opencv.hpp>
```

Lê a imagem pokan.png que está na pasta imgs e salva na variável pokan que é do tipo cv::Mat (assim que imagens são armazenadas na opencv)
```
cv::Mat pokan = cv::imread("imgs/pokan.png");
```

Converte a imagem pokan (RGB) para escala de cinza e salva em gray_pokan.
```
cvtColor(pokan, gray_pokan, cv::COLOR_BGR2GRAY);
```

Os parâmetros de cvtColor são:

```cvtColor(imagemOriginal, imagemConvertida, conversão);```

- imagemOriginal: cv::Mat
- imagemConvertida: cv::Mat
- conversão: [Tipo da conversão](https://docs.opencv.org/3.1.0/d7/d1b/group__imgproc__misc.html#ga4e0972be5de079fed4e3a10e24ef5ef0) - Ex: RGB para cinza


Salva a nova imagem gray_pokan na pasta imgs com o nome gray_pokan.png
```
cv::imwrite("imgs/gray_pokan.png", gray_pokan);
```



Para compilar o exemplo acima execute, dentro da pasta opencvTutorial, o comando seguinte:

```$ make rgb2gray```

Após compilado execute:

```$ ./rgb2gray ```

Verifique que na pasta imgs existe uma imagem com o nome gray_pokan.png que é igual pokan.png porém em escala de cinza

## Ler imagens da câmera

Exemplo de exibição do que é visualizado pela câmera em basicVideo.cpp

cv::VideoCapture é a classe utilizada para capturar video da câmera ou de arquivos
Neste caso é criada uma váriavel chamada cam que é inicializada com o parâmetro 0, isto indica que a câmera número zero é lida.
```
cv::VideoCapture cam(0);
```

No linux para listar as possíveis câmeras:
```$ ls /dev | grep video ```

Verifica se a câmera foi aberta, caso não retorna -1
```
if(!cam.isOpened()){
  return -1;
}
```

Cria uma janela com o nome "Câmera", o vídeo será exibido nesta janela
```
cv::namedWindow("Câmera");
```

Pega e decodifica o próximo frame da câmera, salvando na váriavel imagem
```
cam.read(imagem);
```

Exibe a váriavel imagem na janela câmera
```
cv::imshow("Câmera", imagem);
```
cv::waitKey exibe a imagem por 30ms ou até uma tecla ser pressionada, como isto está dentro de um loop o video é exibido frame por frame. Caso a tecla ESC (27) seja pressionada o break é chamado encerrando o while.
```
if(cv::waitKey(30) == 27) break;
```


## Segmentação de cores
