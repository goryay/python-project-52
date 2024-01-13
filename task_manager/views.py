from django.contrib import messages
from django.views.generic.base import TemplateViews


class HomeView(TemplateView):
    template_name = 'home.html'
