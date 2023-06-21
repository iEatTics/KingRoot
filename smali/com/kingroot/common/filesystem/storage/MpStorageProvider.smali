.class public Lcom/kingroot/common/filesystem/storage/MpStorageProvider;
.super Lcom/kingroot/common/framework/provider/KBaseProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/common/framework/provider/KBaseProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jb()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/tl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v1, Lcom/kingroot/kinguser/st;

    invoke-direct {v1}, Lcom/kingroot/kinguser/st;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcom/kingroot/kinguser/sn;

    invoke-direct {v1}, Lcom/kingroot/kinguser/sn;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcom/kingroot/kinguser/sj;

    invoke-direct {v1}, Lcom/kingroot/kinguser/sj;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcom/kingroot/kinguser/ta;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ta;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-object v0
.end method
