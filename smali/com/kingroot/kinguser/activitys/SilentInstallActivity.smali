.class public Lcom/kingroot/kinguser/activitys/SilentInstallActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method

.method public static aL(Landroid/content/Context;)V
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
    const-class v1, Lcom/kingroot/kinguser/activitys/SilentInstallActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/axu;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axu;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v1, Lcom/kingroot/kinguser/auu;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/auu;-><init>(Landroid/app/Activity;Lcom/kingroot/kinguser/aul$b;)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/axu;->a(Lcom/kingroot/kinguser/aul$a;)V

    .line 21
    return-object v0
.end method
