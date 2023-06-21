.class public Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckMainActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method

.method public static aL(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckMainActivity;->f(Landroid/content/Context;Z)V

    .line 21
    return-void
.end method

.method public static f(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    if-nez p0, :cond_0

    .line 27
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object p0

    .line 28
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 30
    :cond_0
    const-class v1, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckMainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    const-string v1, "auto_start_url_check"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 3

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "auto_start_url_check"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 16
    new-instance v1, Lcom/kingroot/kinguser/bga;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/bga;-><init>(Landroid/content/Context;Z)V

    return-object v1
.end method
