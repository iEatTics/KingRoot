.class public Lcom/kingroot/kinguser/activitys/SilentInstallAppSettingActivity;
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

.method public static vw()V
    .locals 3

    .prologue
    .line 21
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 22
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingroot/kinguser/activitys/SilentInstallAppSettingActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/kingroot/kinguser/axt;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
