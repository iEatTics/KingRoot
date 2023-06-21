.class public Lcom/kingroot/kinguser/activitys/SoftwareProtectListActivity;
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


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/SoftwareProtectListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    const-string v2, "software.protect_list.page"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 32
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aks;->bP(Z)V

    .line 42
    new-instance v0, Lcom/kingroot/kinguser/axx;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axx;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aks;->bP(Z)V

    .line 35
    new-instance v0, Lcom/kingroot/kinguser/axx;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axx;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 38
    :pswitch_1
    new-instance v0, Lcom/kingroot/kinguser/axn;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axn;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
