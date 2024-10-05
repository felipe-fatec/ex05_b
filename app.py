import logging
import random
import time

logger = logging.getLogger(__name__)
logging.basicConfig(filename='example.log', encoding='utf-8', level=logging.DEBUG, format='%(asctime)s - %(levelname)s: %(message)s')

def hello_world():
    logger.info('Este é um log simples.')
    
    if random.random() < 0.25:
        logger.critical("Erro Crítico")
    if random.random() < 0.25:
        logger.error("Test Erro")
    if random.random() < 0.6:
        logger.warning("Test Warning")
    
    logger.info('Fim da execução')
    pass

if __name__ == "__main__":
    while True:
        hello_world()
        time.sleep(1)

