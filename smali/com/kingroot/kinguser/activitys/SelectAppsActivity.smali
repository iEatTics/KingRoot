.class public Lcom/kingroot/kinguser/activitys/SelectAppsActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method

.method private static f(Landroid/app/Activity;)Lcom/kingroot/kinguser/ym;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lcom/kingroot/kinguser/axb;

    invoke-static {}, Lcom/kingroot/kinguser/akc;->Ai()Lcom/kingroot/kinguser/akc;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$2;

    invoke-direct {v2}, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$2;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/axb;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/akd;Lcom/kingroot/kinguser/axb$b;)V

    return-object v0
.end method

.method private static g(Landroid/app/Activity;)Lcom/kingroot/kinguser/ym;
    .locals 5

    .prologue
    .line 115
    new-instance v0, Lcom/kingroot/kinguser/axb;

    invoke-static {}, Lcom/kingroot/kinguser/akg;->Ap()Lcom/kingroot/kinguser/akg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$3;

    invoke-direct {v2}, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$3;-><init>()V

    .line 199
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f07031c

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/kingroot/kinguser/axb;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/akd;Lcom/kingroot/kinguser/axb$b;Ljava/lang/String;)V

    .line 115
    return-object v0
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/SelectAppsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    const-string v2, "software.protect_list.page"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 57
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 84
    invoke-static {p0}, Lcom/kingroot/kinguser/activitys/SelectAppsActivity;->f(Landroid/app/Activity;)Lcom/kingroot/kinguser/ym;

    move-result-object v0

    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    invoke-static {p0}, Lcom/kingroot/kinguser/activitys/SelectAppsActivity;->f(Landroid/app/Activity;)Lcom/kingroot/kinguser/ym;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_1
    new-instance v0, Lcom/kingroot/kinguser/axb;

    invoke-static {}, Lcom/kingroot/kinguser/ake;->Al()Lcom/kingroot/kinguser/ake;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/activitys/SelectAppsActivity$1;-><init>(Lcom/kingroot/kinguser/activitys/SelectAppsActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/axb;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/akd;Lcom/kingroot/kinguser/axb$b;)V

    goto :goto_0

    .line 81
    :pswitch_2
    invoke-static {p0}, Lcom/kingroot/kinguser/activitys/SelectAppsActivity;->g(Landroid/app/Activity;)Lcom/kingroot/kinguser/ym;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
