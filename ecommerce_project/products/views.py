import logging
from django.http import HttpResponse

logger = logging.getLogger('products')


# Create your views here.
def health_check(request):
    logger.info("health check - OK")
    return HttpResponse("OK")
