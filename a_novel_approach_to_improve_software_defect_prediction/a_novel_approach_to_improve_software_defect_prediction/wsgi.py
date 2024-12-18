"""
WSGI config for cross_platform_reputation_generation.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/3.0/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'a_novel_approach_to_improve_software_defect_prediction.settings')
application = get_wsgi_application()
