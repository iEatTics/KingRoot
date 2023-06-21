.class public Lcom/kingroot/kinguser/activitys/SilentInstallSettingActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method

.method public static vw()V
    .locals 3

    .prologue
    .line 18
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 19
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingroot/kinguser/activitys/SilentInstallSettingActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 22
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/kingroot/kinguser/axv;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axv;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
