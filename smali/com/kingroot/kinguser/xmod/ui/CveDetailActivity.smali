.class public Lcom/kingroot/kinguser/xmod/ui/CveDetailActivity;
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

.method public static b(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;)V
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 26
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingroot/kinguser/xmod/ui/CveDetailActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    const-string v2, "cve_info"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/kingroot/kinguser/biu;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/biu;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
