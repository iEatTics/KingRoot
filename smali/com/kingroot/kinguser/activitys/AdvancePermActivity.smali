.class public Lcom/kingroot/kinguser/activitys/AdvancePermActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method

.method public static aL(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 24
    if-nez p0, :cond_0

    .line 25
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object p0

    .line 26
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    :cond_0
    const-class v1, Lcom/kingroot/kinguser/activitys/AdvancePermActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/kingroot/kinguser/awx;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/awx;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v1, Lcom/kingroot/kinguser/aun;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/aun;-><init>(Landroid/app/Activity;Lcom/kingroot/kinguser/aue$b;)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/awx;->a(Lcom/kingroot/kinguser/aue$a;)V

    .line 19
    return-object v0
.end method
