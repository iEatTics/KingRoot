.class public final Lcom/kingroot/kinguser/bvr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static bQK:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/bvs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bvr;->bQK:Landroid/util/SparseArray;

    .line 28
    sget-object v0, Lcom/kingroot/kinguser/bvr;->bQK:Landroid/util/SparseArray;

    const/4 v1, 0x0

    new-instance v2, Lcom/kingroot/kinguser/bvs;

    const-string v3, "info"

    const-string v4, "reportUserComment"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/bvs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/kingroot/kinguser/bvr;->bQK:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/kingroot/kinguser/bvs;

    const-string v3, "softinfo"

    const-string v4, "getCategoryList"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/bvs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/kingroot/kinguser/bvr;->bQK:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Lcom/kingroot/kinguser/bvs;

    const-string v3, "softinfo"

    const-string v4, "getSoftList"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/bvs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/kingroot/kinguser/bvr;->bQK:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-instance v2, Lcom/kingroot/kinguser/bvs;

    const-string v3, "softinfo"

    const-string v4, "getMySoftList"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/bvs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/kingroot/kinguser/bvr;->bQK:Landroid/util/SparseArray;

    const/4 v1, 0x4

    new-instance v2, Lcom/kingroot/kinguser/bvs;

    const-string v3, "softinfo"

    const-string v4, "getADs"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/bvs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 33
    sget-object v0, Lcom/kingroot/kinguser/bvr;->bQK:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lcom/kingroot/kinguser/bvs;

    const-string v3, "softinfo"

    const-string v4, "getHotWord"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/bvs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/kingroot/kinguser/bvr;->bQK:Landroid/util/SparseArray;

    const/4 v1, 0x6

    new-instance v2, Lcom/kingroot/kinguser/bvs;

    const-string v3, "softinfo"

    const-string v4, "getSoftInfo"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/bvs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/kingroot/kinguser/bvr;->bQK:Landroid/util/SparseArray;

    const/4 v1, 0x7

    new-instance v2, Lcom/kingroot/kinguser/bvs;

    const-string v3, "info"

    const-string v4, "reportFBIllegaReason"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/bvs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/kingroot/kinguser/bvr;->bQK:Landroid/util/SparseArray;

    const/16 v1, 0x8

    new-instance v2, Lcom/kingroot/kinguser/bvs;

    const-string v3, "cloudcheck"

    const-string v4, "getAnalyseInfo"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/bvs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/kingroot/kinguser/bvr;->bQK:Landroid/util/SparseArray;

    const/16 v1, 0x9

    new-instance v2, Lcom/kingroot/kinguser/bvs;

    const-string v3, "securereport"

    const-string v4, "reportDownSoft"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/bvs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/kingroot/kinguser/bvr;->bQK:Landroid/util/SparseArray;

    const/16 v1, 0xa

    new-instance v2, Lcom/kingroot/kinguser/bvs;

    const-string v3, "info"

    const-string v4, "getChangeUrl"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/bvs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 39
    return-void
.end method

.method public static kJ(I)Lcom/kingroot/kinguser/bvs;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/kingroot/kinguser/bvr;->bQK:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bvs;

    return-object v0
.end method
