.class public Lcom/kingroot/kinguser/activitys/DeviceActivity;
.super Lcom/kingroot/common/uilib/template/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/common/uilib/template/BaseActivity;-><init>()V

    return-void
.end method

.method public static aL(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    if-nez p0, :cond_0

    .line 42
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object p0

    .line 43
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    :cond_0
    const-class v1, Lcom/kingroot/kinguser/activitys/DeviceActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/aft;->vt()Landroid/app/Activity;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    const v1, 0x7f040019

    const v2, 0x7f040012

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/kingroot/kinguser/axg;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axg;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v1, Lcom/kingroot/kinguser/auq;

    invoke-direct {v1, v0, p0}, Lcom/kingroot/kinguser/auq;-><init>(Lcom/kingroot/kinguser/auh$b;Landroid/app/Activity;)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/axg;->a(Lcom/kingroot/kinguser/auh$a;)V

    .line 25
    invoke-interface {v1}, Lcom/kingroot/kinguser/auh$a;->start()V

    .line 28
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x188bc

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 30
    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/kingroot/common/uilib/template/BaseActivity;->onBackPressed()V

    .line 36
    const v0, 0x7f040012

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/activitys/DeviceActivity;->overridePendingTransition(II)V

    .line 37
    return-void
.end method
