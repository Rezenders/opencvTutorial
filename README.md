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
#include "opencv2/core.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgproc.hpp"
```

Lê a imagem pokan.png que está na pasta imgs e salva na variável pokan que é do tipo cv::Mat (assim que imagens são armazenadas na opencv)
```
cv::Mat pokan = cv::imread("imgs/pokan.png");
```

Converte a imagem pokan (RGB) para escala de cinza e salva em gray_pokan.
```
cvtColor(pokan, gray_pokan, cv::COLOR_BGR2GRAY);
```

Os paramêtros de cvtColor são:

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

