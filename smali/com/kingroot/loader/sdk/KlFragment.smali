.class public Lcom/kingroot/loader/sdk/KlFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mKlContext:Lcom/kingroot/loader/sdk/KlContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/kingroot/loader/sdk/KlFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/loader/sdk/KlFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private getKlApplication()Lcom/kingroot/loader/sdk/AbsKlApplication;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlFragment;->mKlContext:Lcom/kingroot/loader/sdk/KlContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    iget-object v1, p0, Lcom/kingroot/loader/sdk/KlFragment;->mKlContext:Lcom/kingroot/loader/sdk/KlContext;

    invoke-virtual {v1}, Lcom/kingroot/loader/sdk/KlContext;->getPluginId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->getRunningPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v0

    goto :goto_0
.end method

.method private obtainActivityIntentFromKlFragmentIntent(Landroid/app/Activity;Landroid/content/Intent;Lcom/kingroot/loader/sdk/AbsKlApplication;)Landroid/content/Intent;
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/loader/sdk/AbsKlApplication;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 73
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {p3}, Lcom/kingroot/loader/sdk/AbsKlApplication;->getMainKlFragmentClass()Ljava/lang/Class;

    move-result-object v1

    .line 75
    if-nez v1, :cond_0

    .line 76
    sget-object v1, Lcom/kingroot/loader/sdk/KlFragment;->TAG:Ljava/lang/String;

    const-string v2, "No main fragment!"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bkq;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    .line 101
    :goto_0
    return-object p2

    .line 79
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_1
    const-string v1, "com.kingroot.loader.fragment_name"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    sget-object v1, Lcom/kingroot/loader/sdk/KlFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Lcom/kingroot/loader/sdk/AbsKlApplication;->getKlContext()Lcom/kingroot/loader/sdk/KlContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/loader/sdk/KlContext;->getPluginId()I

    move-result v1

    .line 95
    const-string v2, "com.kingroot.loader.plugin_id"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p3, v0}, Lcom/kingroot/loader/sdk/AbsKlApplication;->getLaunchMode(Ljava/lang/String;)I

    move-result v2

    .line 98
    invoke-static {v1, v0, v2}, Lcom/kingroot/kinguser/bke;->f(ILjava/lang/String;I)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 80
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 81
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 83
    :cond_2
    sget-object v1, Lcom/kingroot/loader/sdk/KlFragment;->TAG:Ljava/lang/String;

    const-string v2, "Must specify fragment entry!"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bkq;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    .line 86
    goto :goto_0
.end method


# virtual methods
.method public getKlContext()Lcom/kingroot/loader/sdk/KlContext;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlFragment;->mKlContext:Lcom/kingroot/loader/sdk/KlContext;

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/kingroot/loader/sdk/KlFragment;->TAG:Ljava/lang/String;

    const-string v1, "getKlContext == null!"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/kingroot/loader/sdk/KlFragment;->mKlContext:Lcom/kingroot/loader/sdk/KlContext;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/KlFragment;->getKlContext()Lcom/kingroot/loader/sdk/KlContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    sget-object v0, Lcom/kingroot/loader/sdk/KlFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/KlFragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onActivityResult, requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 51
    instance-of v0, p1, Lcom/kingroot/loader/host/stub/KlActivity;

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Lcom/kingroot/loader/host/stub/KlActivity;

    invoke-virtual {p1}, Lcom/kingroot/loader/host/stub/KlActivity;->aeI()Lcom/kingroot/loader/sdk/KlContext;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlFragment;->mKlContext:Lcom/kingroot/loader/sdk/KlContext;

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/KlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 57
    instance-of v1, v0, Lcom/kingroot/loader/host/stub/KlActivity;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Lcom/kingroot/loader/host/stub/KlActivity;

    invoke-virtual {v0}, Lcom/kingroot/loader/host/stub/KlActivity;->aeI()Lcom/kingroot/loader/sdk/KlContext;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/sdk/KlFragment;->mKlContext:Lcom/kingroot/loader/sdk/KlContext;

    .line 61
    :cond_1
    sget-object v0, Lcom/kingroot/loader/sdk/KlFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach but can\'t get KlContext!"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final startKlFragment(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 113
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/loader/sdk/KlFragment;->getKlApplication()Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/KlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 116
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 118
    invoke-direct {p0, v1, p1, v0}, Lcom/kingroot/loader/sdk/KlFragment;->obtainActivityIntentFromKlFragmentIntent(Landroid/app/Activity;Landroid/content/Intent;Lcom/kingroot/loader/sdk/AbsKlApplication;)Landroid/content/Intent;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0, v0}, Lcom/kingroot/loader/sdk/KlFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final startKlFragment(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 125
    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/loader/sdk/KlFragment;->getKlApplication()Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/KlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 128
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0, v1, p1, v0}, Lcom/kingroot/loader/sdk/KlFragment;->obtainActivityIntentFromKlFragmentIntent(Landroid/app/Activity;Landroid/content/Intent;Lcom/kingroot/loader/sdk/AbsKlApplication;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0, v0, p2}, Lcom/kingroot/loader/sdk/KlFragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final startKlFragmentForResult(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 136
    if-nez p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/loader/sdk/KlFragment;->getKlApplication()Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/KlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 139
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0, v1, p1, v0}, Lcom/kingroot/loader/sdk/KlFragment;->obtainActivityIntentFromKlFragmentIntent(Landroid/app/Activity;Landroid/content/Intent;Lcom/kingroot/loader/sdk/AbsKlApplication;)Landroid/content/Intent;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, v0, p2}, Lcom/kingroot/loader/sdk/KlFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public final startKlFragmentForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 148
    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/loader/sdk/KlFragment;->getKlApplication()Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/KlFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 151
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 153
    invoke-direct {p0, v1, p1, v0}, Lcom/kingroot/loader/sdk/KlFragment;->obtainActivityIntentFromKlFragmentIntent(Landroid/app/Activity;Landroid/content/Intent;Lcom/kingroot/loader/sdk/AbsKlApplication;)Landroid/content/Intent;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, v0, p2, p3}, Lcom/kingroot/loader/sdk/KlFragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0
.end method
