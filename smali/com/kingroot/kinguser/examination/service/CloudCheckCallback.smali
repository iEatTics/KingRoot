.class public abstract Lcom/kingroot/kinguser/examination/service/CloudCheckCallback;
.super Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback$Stub;
.source "SourceFile"


# static fields
.field public static final RISK_APP_INFO_KEY:Ljava/lang/String; = "risk"

.field public static final UNKNOWN_APP_INFO_KEY:Ljava/lang/String; = "unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onRiskFound(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    if-nez p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const-string v0, "risk"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 34
    const-string v1, "unknown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 35
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_0

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 40
    check-cast v0, Ljava/util/List;

    .line 41
    check-cast v1, Ljava/util/List;

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/tencent/securemodule/api/AppInfo;

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/tencent/securemodule/api/AppInfo;

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/examination/service/CloudCheckCallback;->onRiskFound(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public abstract onRiskFound(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method
