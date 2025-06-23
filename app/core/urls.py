from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import include, path
from django.views import defaults

admin.site.index_title = "Django administration"
admin.site.name = "Django Admin"
admin.site.site_header = "Django administration"
admin.site.site_title = "Django Admin"

urlpatterns = [
    path("", include("index.urls"), name="index"),
    path("admin/", admin.site.urls),
]

if settings.DEBUG:
    urlpatterns.extend(static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT))
    urlpatterns.extend(static(settings.STATIC_URL, document_root=settings.STATIC_ROOT))
    urlpatterns.extend(
        [
            path(
                "400/",
                defaults.bad_request,
                kwargs={"exception": Exception("Bad Request")},
            ),
            path(
                "403/",
                defaults.permission_denied,
                kwargs={"exception": Exception("Permission Denied")},
            ),
            path(
                "404/",
                defaults.page_not_found,
                kwargs={"exception": Exception("Not Found")},
            ),
            path("500/", defaults.server_error),
        ],
    )
