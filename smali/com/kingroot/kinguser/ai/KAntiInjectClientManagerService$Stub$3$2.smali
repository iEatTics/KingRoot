.class Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aqe:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3$2;->aqe:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 9
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 629
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 630
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 631
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 637
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/kingroot/common/utils/system/ProcessUtils;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 645
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 646
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 661
    :goto_2
    new-instance v8, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kingroot/kinguser/ai/receiver/AppLauncherMaskReceiver;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 662
    invoke-static {}, Lcom/kingroot/kinguser/ahm;->xs()Lcom/kingroot/kinguser/ahm;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/ahm;->fR(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 663
    const-string v0, "extra_app_name_string"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 665
    invoke-static {}, Lcom/kingroot/kinguser/ahm;->xs()Lcom/kingroot/kinguser/ahm;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/ahm;->fS(Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_2
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 647
    :catch_0
    move-exception v0

    .line 648
    const-string v0, ""

    move-object v7, v0

    goto :goto_2

    .line 667
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/ahm;->xs()Lcom/kingroot/kinguser/ahm;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/ahm;->fT(Ljava/lang/String;)J

    move-result-wide v0

    .line 668
    const-wide/32 v4, 0x5265c00

    .line 670
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    const-string v0, "extra_app_name_string"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    const-string v0, "extra_is_only_show_toast"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 673
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 674
    invoke-static {}, Lcom/kingroot/kinguser/ahm;->xs()Lcom/kingroot/kinguser/ahm;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v6, v2, v3}, Lcom/kingroot/kinguser/ahm;->j(Ljava/lang/String;J)V

    goto/16 :goto_0
.end method
