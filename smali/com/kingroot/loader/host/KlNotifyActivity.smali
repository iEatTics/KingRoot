.class public Lcom/kingroot/loader/host/KlNotifyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/loader/host/KlNotifyActivity$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final byU:Lcom/kingroot/loader/host/KlNotifyActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/kingroot/loader/host/KlNotifyActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/loader/host/KlNotifyActivity;->a:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/kingroot/loader/host/KlNotifyActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/loader/host/KlNotifyActivity$a;-><init>(Lcom/kingroot/loader/host/KlNotifyActivity$1;)V

    sput-object v0, Lcom/kingroot/loader/host/KlNotifyActivity;->byU:Lcom/kingroot/loader/host/KlNotifyActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(ILandroid/content/Intent;I)Landroid/content/Intent;
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/bkd;->aeG()Landroid/content/Context;

    move-result-object v1

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 52
    const-class v2, Lcom/kingroot/loader/host/KlNotifyActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 56
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    :goto_0
    const-string v1, "com.kingroot.loader.plugin_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const-string v1, "com.kingroot.loader.fragment_start_flag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string v1, "com.kingroot.loader.argv"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 75
    :goto_1
    return-object v0

    .line 58
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 60
    const-string v2, "com.kingroot.loader.fragment_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/kingroot/loader/host/KlNotifyActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(ILandroid/content/Intent;I)Z
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-static {p0, p1, p2}, Lcom/kingroot/loader/host/KlNotifyActivity;->a(ILandroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v1

    .line 86
    if-nez v1, :cond_0

    .line 99
    :goto_0
    return v0

    .line 90
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bkd;->aeG()Landroid/content/Context;

    move-result-object v2

    .line 91
    const-class v3, Lcom/kingroot/loader/host/KlNotifyActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 92
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    invoke-static {v1}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/kingroot/loader/host/KlNotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    sget-object v1, Lcom/kingroot/loader/host/KlNotifyActivity;->a:Ljava/lang/String;

    const-string v2, "onCreate enter"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v1, Lcom/kingroot/loader/host/KlNotifyActivity;->byU:Lcom/kingroot/loader/host/KlNotifyActivity$a;

    invoke-virtual {v1, v0}, Lcom/kingroot/loader/host/KlNotifyActivity$a;->o(Landroid/content/Intent;)Z

    .line 43
    sget-object v0, Lcom/kingroot/loader/host/KlNotifyActivity;->byU:Lcom/kingroot/loader/host/KlNotifyActivity$a;

    invoke-virtual {v0}, Lcom/kingroot/loader/host/KlNotifyActivity$a;->ny()Z

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/loader/host/KlNotifyActivity;->finish()V

    .line 47
    return-void
.end method
