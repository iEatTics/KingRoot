.class public final Lcom/kingroot/kinguser/bmd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcloudsdk/IModule;


# instance fields
.field private bBd:Lcom/kingroot/kinguser/bme;

.field private bBe:Landroid/content/Context;

.field private bBf:Landroid/content/Context;

.field private bBg:Ljava/lang/Object;

.field private bBh:Ljava/lang/reflect/Method;

.field private bBi:Ljava/lang/reflect/Method;

.field private bBj:Ljava/lang/reflect/Method;

.field private bBk:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/bme;)V
    .locals 6

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/kingroot/kinguser/bmd;->bBe:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/kingroot/kinguser/bmd;->bBd:Lcom/kingroot/kinguser/bme;

    .line 90
    invoke-static {p2}, Lcom/kingroot/kinguser/bmj;->e(Lcom/kingroot/kinguser/bme;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bmd;->bBd:Lcom/kingroot/kinguser/bme;

    iget-object v1, v1, Lcom/kingroot/kinguser/bme;->bBt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/kingroot/kinguser/bmo;

    iget-object v2, p0, Lcom/kingroot/kinguser/bmd;->bBd:Lcom/kingroot/kinguser/bme;

    iget-object v2, v2, Lcom/kingroot/kinguser/bme;->bBu:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/bmd;->bBd:Lcom/kingroot/kinguser/bme;

    iget-object v3, v3, Lcom/kingroot/kinguser/bme;->vw:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3}, Lcom/kingroot/kinguser/bmo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bmd;->bBf:Landroid/content/Context;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bmd;->bBg:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :try_start_1
    const-string v1, "onCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bmd;->bBh:Ljava/lang/reflect/Method;

    .line 106
    iget-object v1, p0, Lcom/kingroot/kinguser/bmd;->bBh:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/kingroot/kinguser/bmd;->bBg:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingroot/kinguser/bmd;->bBf:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 115
    :goto_0
    :try_start_2
    const-string v1, "onExecute"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bmd;->bBi:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    .line 123
    :goto_1
    :try_start_3
    const-string v1, "onExecute"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Landroid/os/Handler$Callback;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bmd;->bBj:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    .line 131
    :goto_2
    :try_start_4
    const-string v1, "onDestory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 132
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bmd;->bBk:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1

    .line 136
    :goto_3
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 100
    throw v0

    .line 136
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0

    .line 111
    :catch_5
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final asyncExecute(ILandroid/os/Bundle;Lcloudsdk/IActionCallback;)Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/bmd;->bBf:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/kingroot/kinguser/bmd;->asyncExecute(Landroid/content/Context;ILandroid/os/Bundle;Lcloudsdk/IActionCallback;)Z

    move-result v0

    return v0
.end method

.method public final asyncExecute(Landroid/content/Context;ILandroid/os/Bundle;Lcloudsdk/IActionCallback;)Z
    .locals 6

    .prologue
    .line 220
    new-instance v0, Lcom/kingroot/kinguser/bmd$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bmd$1;-><init>(Lcom/kingroot/kinguser/bmd;Landroid/content/Context;ILandroid/os/Bundle;Lcloudsdk/IActionCallback;)V

    .line 225
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bmd$1;->co()Z

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public final destory()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 231
    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/bmd;->bBk:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 235
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bmd;->bBk:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/kingroot/kinguser/bmd;->bBg:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 243
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 244
    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmc;->valueOf(Landroid/os/Bundle;)Lcom/kingroot/kinguser/bmc;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Lcloudsdk/IActionResult;->success()Z

    move-result v0

    .line 249
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bmd;->bBd:Lcom/kingroot/kinguser/bme;

    iget-object v1, v1, Lcom/kingroot/kinguser/bme;->vw:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->mm(Ljava/lang/String;)Z

    .line 253
    iget-object v1, p0, Lcom/kingroot/kinguser/bmd;->bBd:Lcom/kingroot/kinguser/bme;

    iget v1, v1, Lcom/kingroot/kinguser/bme;->bBq:I

    invoke-static {v1}, Lcom/kingroot/kinguser/bmj;->jM(I)V

    .line 254
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 255
    return v0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 242
    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method public final execute(ILandroid/os/Bundle;)Lcloudsdk/IActionResult;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/bmd;->bBf:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2}, Lcom/kingroot/kinguser/bmd;->execute(Landroid/content/Context;ILandroid/os/Bundle;)Lcloudsdk/IActionResult;

    move-result-object v0

    return-object v0
.end method

.method public final execute(ILandroid/os/Bundle;Landroid/os/Handler$Callback;)Lcloudsdk/IActionResult;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/bmd;->bBf:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/kingroot/kinguser/bmd;->execute(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Handler$Callback;)Lcloudsdk/IActionResult;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Landroid/content/Context;ILandroid/os/Bundle;)Lcloudsdk/IActionResult;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/bmd;->bBe:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->bI(Landroid/content/Context;)V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bmd;->bBi:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/kingroot/kinguser/bmd;->bBg:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 156
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 158
    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmc;->valueOf(Landroid/os/Bundle;)Lcom/kingroot/kinguser/bmc;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 160
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/bmc;

    const/4 v1, 0x1

    const/16 v2, 0x3f0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bmc;-><init>(IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    new-instance v0, Lcom/kingroot/kinguser/bmc;

    const/16 v1, 0x3ef

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v1, v2, v6}, Lcom/kingroot/kinguser/bmc;-><init>(IILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final execute(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Handler$Callback;)Lcloudsdk/IActionResult;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/bmd;->bBe:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->bI(Landroid/content/Context;)V

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bmd;->bBj:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/kingroot/kinguser/bmd;->bBg:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 193
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    .line 192
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 195
    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmc;->valueOf(Landroid/os/Bundle;)Lcom/kingroot/kinguser/bmc;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 197
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/bmc;

    const/4 v1, 0x1

    const/16 v2, 0x3f0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bmc;-><init>(IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 201
    new-instance v0, Lcom/kingroot/kinguser/bmc;

    const/16 v1, 0x3ef

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v1, v2, v6}, Lcom/kingroot/kinguser/bmc;-><init>(IILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final getModuleInfo()Lcom/kingroot/kinguser/bme;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/bmd;->bBd:Lcom/kingroot/kinguser/bme;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/bmd;->bBd:Lcom/kingroot/kinguser/bme;

    iget v0, v0, Lcom/kingroot/kinguser/bme;->versionCode:I

    return v0
.end method

.method public final isAlive()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method
