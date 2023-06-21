.class public Lcom/kingroot/kinguser/activitys/RootPcGuideActivity;
.super Lcom/kingroot/common/uilib/template/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/kingroot/common/uilib/template/BaseActivity;-><init>()V

    return-void
.end method

.method public static aL(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingroot/kinguser/activitys/RootPcGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/kingroot/kinguser/axp;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axp;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
