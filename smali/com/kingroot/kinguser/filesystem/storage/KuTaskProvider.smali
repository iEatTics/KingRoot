.class public Lcom/kingroot/kinguser/filesystem/storage/KuTaskProvider;
.super Lcom/kingroot/common/framework/task/provider/KTaskProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/kingroot/common/framework/task/provider/KTaskProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string v0, "com.kingroot.kingusesr.taskprovider"

    return-object v0
.end method
