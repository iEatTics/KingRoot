.class public Lcom/kingroot/kinguser/activitys/SuRequestActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bik$a;


# instance fields
.field private aja:Lcom/kingroot/kinguser/bik;

.field private ajb:Z

.field private ajc:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->ajb:Z

    .line 37
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/activitys/SuRequestActivity$1;-><init>(Lcom/kingroot/kinguser/activitys/SuRequestActivity;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->ajc:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/activitys/SuRequestActivity;Lcom/kingroot/kinguser/bik;)Lcom/kingroot/kinguser/bik;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->aja:Lcom/kingroot/kinguser/bik;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 2

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 140
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingroot/kinguser/activitys/SuRequestActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    const-string v1, "REQ_MODEL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/activitys/SuRequestActivity;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 3

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 123
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingroot/kinguser/view/PermissionRequestActivityMiui;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    const-string v2, "REQ_MODEL"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/activitys/SuRequestActivity;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->ajb:Z

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/activitys/SuRequestActivity;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->ajb:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/activitys/SuRequestActivity;)Lcom/kingroot/kinguser/bik;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->aja:Lcom/kingroot/kinguser/bik;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->ajc:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 35
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->aja:Lcom/kingroot/kinguser/bik;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->aja:Lcom/kingroot/kinguser/bik;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bik;->dismiss()V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->finish()V

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 98
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jF()V

    .line 99
    return-void
.end method

.method public vA()V
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->ajb:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->ajb:Z

    .line 112
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/SuRequestActivity;->finish()V

    .line 114
    :cond_0
    return-void
.end method
