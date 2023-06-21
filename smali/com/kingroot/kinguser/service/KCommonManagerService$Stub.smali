.class Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;
.super Lcom/kingroot/kinguser/service/IKCommonManagerInterface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/service/KCommonManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stub"
.end annotation


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPermitFor3rdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/kingroot/kinguser/service/IKCommonManagerInterface$Stub;-><init>()V

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;->mPermitFor3rdMap:Ljava/util/HashMap;

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;->mPermitFor3rdMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqpimsecure"

    const-string v2, "00B1208638DE0FCD3E920886D658DAF6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method private asyncOpenAntiInjectFunction()V
    .locals 6

    .prologue
    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub$1;-><init>(Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 130
    return-void
.end method

.method private checkPermissionFor3rdApp()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 139
    const-string v3, ""

    .line 140
    const-string v3, ""

    .line 142
    iget-object v3, p0, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 144
    aget-object v3, v0, v2

    .line 145
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;->mPermitFor3rdMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    invoke-static {v3}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 161
    :goto_0
    return v0

    .line 153
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;->mPermitFor3rdMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 155
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getAntiInjectState()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;->checkPermissionFor3rdApp()Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ahl;->xo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public openAntiInjectFunction()I
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;->checkPermissionFor3rdApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;->asyncOpenAntiInjectFunction()V

    .line 100
    const/4 v0, 0x1

    goto :goto_0
.end method
