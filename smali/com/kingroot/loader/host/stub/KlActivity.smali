.class public Lcom/kingroot/loader/host/stub/KlActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private bze:Lcom/kingroot/loader/sdk/KlContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/kingroot/loader/host/stub/KlActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/loader/host/stub/KlActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final aeI()Lcom/kingroot/loader/sdk/KlContext;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    invoke-virtual {v0}, Lcom/kingroot/loader/sdk/KlContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    invoke-virtual {v0}, Lcom/kingroot/loader/sdk/KlContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    invoke-virtual {v0}, Lcom/kingroot/loader/sdk/KlContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    invoke-virtual {v0}, Lcom/kingroot/loader/sdk/KlContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    if-eqz v1, :cond_0

    const-string v1, "layout_inflater"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 206
    :cond_0
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 46
    sget-object v0, Lcom/kingroot/loader/host/stub/KlActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const v6, 0x1020002

    const/4 v5, -0x1

    .line 52
    sget-object v0, Lcom/kingroot/loader/host/stub/KlActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onCreate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz p1, :cond_0

    const-string v0, "com.kingroot.loader.plugin_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "com.kingroot.loader.plugin_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 57
    sget-object v0, Lcom/kingroot/loader/host/stub/KlActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate restore pluginId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    .line 60
    invoke-interface {v0, v2}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->getRunningPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v3

    .line 61
    if-eqz v3, :cond_2

    .line 62
    invoke-interface {v3}, Lcom/kingroot/loader/sdk/IKlApplication;->getKlContext()Lcom/kingroot/loader/sdk/KlContext;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    .line 76
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    if-nez p1, :cond_1

    .line 82
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/kingroot/loader/host/stub/KlActivity;->setContentView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0}, Lcom/kingroot/loader/host/stub/KlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 91
    if-nez v1, :cond_4

    .line 92
    sget-object v0, Lcom/kingroot/loader/host/stub/KlActivity;->a:Ljava/lang/String;

    const-string v1, "Intent can\'t be null!"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/kingroot/loader/host/stub/KlActivity;->finish()V

    .line 138
    :cond_1
    :goto_1
    return-void

    .line 64
    :cond_2
    invoke-interface {v0, v2}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->launchPlugin(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 65
    invoke-interface {v0, v2}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->getRunningPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 66
    invoke-interface {v0}, Lcom/kingroot/loader/sdk/IKlApplication;->getKlContext()Lcom/kingroot/loader/sdk/KlContext;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    goto :goto_0

    .line 69
    :cond_3
    sget-object v0, Lcom/kingroot/loader/host/stub/KlActivity;->a:Ljava/lang/String;

    const-string v2, "Try to restore fragment, but application is STOP!"

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/kingroot/loader/host/stub/KlActivity;->setIntent(Landroid/content/Intent;)V

    move-object p1, v1

    goto :goto_0

    .line 98
    :cond_4
    const-string v0, "com.kingroot.loader.plugin_id"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 99
    if-ne v2, v5, :cond_5

    .line 100
    sget-object v0, Lcom/kingroot/loader/host/stub/KlActivity;->a:Ljava/lang/String;

    const-string v1, "Must specify plugin id!"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/kingroot/loader/host/stub/KlActivity;->finish()V

    goto :goto_1

    .line 106
    :cond_5
    const-string v0, "com.kingroot.loader.fragment_name"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    sget-object v0, Lcom/kingroot/loader/host/stub/KlActivity;->a:Ljava/lang/String;

    const-string v1, "Must specify fragment entry!"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/kingroot/loader/host/stub/KlActivity;->finish()V

    goto :goto_1

    .line 114
    :cond_6
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    .line 115
    invoke-interface {v0, v2}, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;->getRunningPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_8

    .line 117
    invoke-interface {v0}, Lcom/kingroot/loader/sdk/IKlApplication;->getKlContext()Lcom/kingroot/loader/sdk/KlContext;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    .line 126
    const-string v0, "com.kingroot.loader.argv"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/kingroot/loader/host/stub/KlActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 128
    :cond_7
    iget-object v1, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    invoke-static {v1, v3, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 129
    if-nez v0, :cond_9

    .line 130
    sget-object v0, Lcom/kingroot/loader/host/stub/KlActivity;->a:Ljava/lang/String;

    const-string v1, "Create fragment fail!"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/kingroot/loader/host/stub/KlActivity;->finish()V

    goto :goto_1

    .line 120
    :cond_8
    sget-object v0, Lcom/kingroot/loader/host/stub/KlActivity;->a:Ljava/lang/String;

    const-string v1, "Try to create fragment, but application is STOP!"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/kingroot/loader/host/stub/KlActivity;->finish()V

    goto/16 :goto_1

    .line 136
    :cond_9
    invoke-virtual {p0}, Lcom/kingroot/loader/host/stub/KlActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 40
    sget-object v0, Lcom/kingroot/loader/host/stub/KlActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onNewIntent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    const-string v0, "com.kingroot.loader.plugin_id"

    iget-object v1, p0, Lcom/kingroot/loader/host/stub/KlActivity;->bze:Lcom/kingroot/loader/sdk/KlContext;

    invoke-virtual {v1}, Lcom/kingroot/loader/sdk/KlContext;->getPluginId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 144
    sget-object v0, Lcom/kingroot/loader/host/stub/KlActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {p0}, Lcom/kingroot/kinguser/bjz;->m(Landroid/app/Activity;)V

    .line 147
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 151
    sget-object v0, Lcom/kingroot/loader/host/stub/KlActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onStop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {p0}, Lcom/kingroot/kinguser/bjz;->n(Landroid/app/Activity;)V

    .line 154
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 155
    return-void
.end method
