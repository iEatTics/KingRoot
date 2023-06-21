.class public Lcom/kingroot/kinguser/activitys/AppsMarketMainActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method

.method public static aL(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingroot/kinguser/activitys/AppsMarketMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public static aN(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingroot/kinguser/activitys/AppsMarketMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const-string v1, "show_well_chosen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/kingroot/kinguser/anu;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anu;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v1, Lcom/kingroot/kinguser/auo;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/auo;-><init>(Lcom/kingroot/kinguser/auf$b;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/auf$a;)V

    .line 32
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {}, Lcom/kingroot/kinguser/ane;->IR()V

    .line 24
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188eb

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 25
    return-void
.end method
