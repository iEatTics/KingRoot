.class public Lcom/kingroot/kinguser/activitys/SecurityProtectActivity;
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

.method public static aL(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/activitys/SecurityProtectActivity;->f(Landroid/content/Context;Z)V

    .line 30
    return-void
.end method

.method public static f(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 35
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 36
    if-nez p0, :cond_0

    .line 37
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object p0

    .line 38
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    :cond_0
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    const-class v1, Lcom/kingroot/kinguser/activitys/SecurityProtectActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/kingroot/kinguser/axr;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axr;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v1, Lcom/kingroot/kinguser/aut;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/aut;-><init>(Lcom/kingroot/kinguser/auk$b;)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/axr;->a(Lcom/kingroot/kinguser/auk$a;)V

    .line 25
    return-object v0
.end method
