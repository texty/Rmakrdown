# Код для автоматичного створення простої верстки 
## Приклад за лінком: https://texty.github.io/Rmakrdown/

Для початку роботи, завантажте папку Rmd на робочий стіл.

Запустіть файл runFirst.Rmd, натисність кнопку "Knit" (звʼязати). Відкрийте output вікно в браузері і подивіться, чи правильно він спрацював. Якщо так, то ви отримаєтет сторінку, що виглядатиме як за лінком вище: https://texty.github.io/Rmakrdown/. Код має завантажити необхідні бібліотеки, створити папки.




Тепер відредагуйте файл runFirst.Rmd відповідно до потреб: 

### Перепишіть значення змінних для макету у файлі runFirst.Rmd

**page_url:** http://texty.org.ua/d/2018/test-project #лінк на ваш проект

**page_title:** "Заголовок статті, який буде відображатись в соцмережах" 

**description:** "Опис статті, який буде відображатись в соцмережах"

**title:** "Заголовок статті"

**subtitle:** "Аннотация до статті. Пару вступних реченнь"

**authors:** "імʼя автора"

**published:** "дата публікації"

**read_more1:** http://texty.org.ua/d/2018/amber/ #лінк-посилання на попередній проект для блоку **Читайте також**

**read_more1_alt:** "опис першого лінку, наприклад 'авіація' або його назва"

**read_more2:** http://texty.org.ua/d/auto_euro/ #лінк-посилання на попередній проект для блоку **Читайте також**

**read_more2_alt:** "опис другого лінку, наприклад 'бурштин'або його назва"

**read_more3:** http://texty.org.ua/d/urban-heat-web/ #лінк-посилання на попередній проект для блоку **Читайте також**

**read_more3_alt:** "опис третього лінку"



### Контент:

**Підготуйте заставочне зображення для статті. Ним треба замінити файл main.jpg у папці**

**Замініть блоки Lorem ipsum на потрібний текст:**

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ex leo, sollicitudin ut est facilisis, vulputate aliquam felis. Fusce non iaculis metus. Aliquam nec facilisis enim. Proin quis risus fermentum, iaculis tellus at, lobortis mi. Nullam sapien elit, sollicitudin non porttitor quis, accumsan sed elit. Aenean dignissim lacus ac felis tincidunt interdum. Quisque vel pellentesque elit, id pulvinar quam. Quisque at mi consequat diam tincidunt placerat non eleifend diam. Nulla placerat quis neque ut faucibus. Duis ornare tellus nec dapibus faucibus. Vestibulum arcu nunc, pulvinar quis maximus in, dictum eget nibh. Vivamus eu cursus magna, ut eleifend enim. Etiam a pharetra ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.

### Додайте потрібні зображення:**
<div class='bigImg'>
![](img/image.png){.bigImg .lazy } 
</div>
**Замість "image.png" вставте потрібну назву**

** Якщо потрібно змінити колір іконок соц.мереж та лого відредагуйте наступний шматок коду у файлі runFirst.Rmd
{js, echo=FALSE } 
jQuery('svg#facebook')
  .css("fill", "white") 
jQuery('svg#twitter')
  .css("fill", "white")
jQuery('svg#logo')
  .css("fill", "white")
jQuery('#overlay')
  .css("background-color", "black")
  .css("opacity", "0.5")


### footer матеріалу: 
Щоб згенерувати посилання на інші матеріали для блоку "Читайте також:". Підготуйте необхідні картинки за допомогою http://z.texty.org.ua:4567/, завантажте їх і назвіть read-more1.png, read-more2.png, read-more2.png 

**Запустіть команду "Knit" та відкрийте верстку в браузері**. 
Готово!