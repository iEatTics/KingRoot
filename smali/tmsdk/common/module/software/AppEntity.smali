.class public Ltmsdk/common/module/software/AppEntity;
.super Ltmsdk/common/BaseEntity;
.source "SourceFile"


# instance fields
.field private mAppInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ltmsdk/common/BaseEntity;-><init>()V

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/software/AppEntity;->mAppInfo:Ljava/util/HashMap;

    return-void
.end method

.method private y(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    if-nez p1, :cond_0

    .line 486
    const/4 p1, 0x0

    .line 491
    :goto_0
    return-object p1

    .line 488
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 489
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 491
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public amR()Z
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->mAppInfo:Ljava/util/HashMap;

    const-string v1, "isSystem"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->mAppInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->mAppInfo:Ljava/util/HashMap;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 311
    invoke-direct {p0, v0}, Ltmsdk/common/module/software/AppEntity;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->mAppInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method
