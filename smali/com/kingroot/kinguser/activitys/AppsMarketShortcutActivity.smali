.class public Lcom/kingroot/kinguser/activitys/AppsMarketShortcutActivity;
.super Lcom/kingroot/kinguser/activitys/AppsMarketMainActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/AppsMarketMainActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/kingroot/kinguser/activitys/AppsMarketMainActivity;->oC()Lcom/kingroot/kinguser/ym;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/activitys/AppsMarketMainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18901

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 17
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lcom/kingroot/kinguser/activitys/AppsMarketMainActivity;->onStart()V

    .line 22
    return-void
.end method
