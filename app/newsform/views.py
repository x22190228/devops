from django.shortcuts import render
from .forms import UserPreferenceForm

def submit_preferences(request):
    if request.method == 'POST':
        form = UserPreferenceForm(request.POST)
        if form.is_valid():
            form.save()
           
    else:
        form = UserPreferenceForm()
    return render(request, 'newsform/submit_preferences.html', {'form': form})
