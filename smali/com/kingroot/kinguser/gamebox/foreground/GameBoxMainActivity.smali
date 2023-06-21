.class public Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainActivity;
.super Lcom/kingroot/kinguser/gamebox/foreground/GameBoxBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxBaseActivity;-><init>()V

    .line 18
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 30
    const-class v1, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DX()V

    .line 23
    new-instance v0, Lcom/kingroot/kinguser/atm;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/atm;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
