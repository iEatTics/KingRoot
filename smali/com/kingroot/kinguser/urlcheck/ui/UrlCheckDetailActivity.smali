.class public Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDetailActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
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
    const-class v1, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDetailActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    const-string v1, "key_risk_url_log"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/kingroot/kinguser/bfz;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bfz;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
