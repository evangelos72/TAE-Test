#test-data.py

#CSS Selectors
LOAD_MORE_BUTTON = 'css:a.btn.link-showMore.btn__text'
HEADER = 'css:h1'
PUBLICATION_DATE = 'css:time[pubdate="pubdate"]'
VIDEO_BIG_PLAY_BUTTON = 'css:.c-mmp__big_play_btn'
VIDEO_SMALL_PLAY_BUTTON = 'css:.c-mmp__cpanel-btn--play'
VIDEO_PAUSE_BUTTON = 'css:.ico-pause'
CALLENDAR = 'css:.ico-calendar'
CALLENDAR_LEFT_BUTTON = 'css:.ico-chevron-left-rounded'
CALENDAR_DATE = 'css:tr.calendar__table-row--daysrow:nth-child(3) > td:nth-child(2) > a:nth-child(1)'
CALLENDAR_HEADER = 'css:h2.date'

#XPaths
IMAGES = 'xpath://div[@class="img-wrap img-wrap--gallery"]'
IMAGE_CAPTION = '(xpath://div[@class="img-desc img-desc--inverted d-flex"]//span[contains(@class, "caption caption--inverted")])[{}]'

#Test Data
#Gallery 1 - TASK 1
GALLERY_1_URL = 'https://thehub.rferl.org/a/32591003.html'
GALLERY_1_HEADER = 'Kyrgyz Nomads'
GALLERY_1_PUBLICATION_DATE = 'September 13, 2023'
GALLERY_1_INITIAL_IMAGE_COUNT = 4
GALLERY_1_EXPECTED_CAPTION_TEXT = 'KYRGYZSTAN NOMADS'
GALLERY_1_CLICK_TIMES = 3
GALLERY_1_TOTAL_IMAGES = 13

#Gallery 2 - TASK 1
GALLERY_2_URL = 'https://thehub.rferl.org/a/georgia-politics/33167663.html'
GALLERY_2_HEADER = 'PHOTO PACKAGE: GEORGIA VOTES FOR EU'
GALLERY_2_PUBLICATION_DATE = 'October 22, 2024'
GALLERY_2_INITIAL_IMAGE_COUNT = 4
GALLERY_2_EXPECTED_CAPTION_TEXT = 'Georgia votes for EU, Tbilisi, October 20, 2024'
GALLERY_2_CLICK_TIMES = 2
GALLERY_2_TOTAL_IMAGES = 10

#Video - TASK 2
VIDEO_URL = 'https://www.rferl.org/a/armenia-mars-simulation-space-mission/32867493.html'
VIDEO_HEADER = 'Is Armenia Like Mars? A Space Simulation Mission Says It\'s Close Enough'
VIDEO_PUBLICATION_DATE = 'March 18, 2024 19:36 GMT'

#Calendar - TASK 5
CALENDAR_URL = 'https://www.rferl.org/z/16733'
CALLENDAR_HEADER_TEXT = 'Monday 12 August 2024'
CALLENDAR_CLICK_TIMES = 4