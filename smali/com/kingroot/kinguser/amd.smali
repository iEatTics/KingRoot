.class public Lcom/kingroot/kinguser/amd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/amm;


# instance fields
.field public azI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

.field public azJ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/kingroot/kinguser/amd;->azI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 13
    return-void
.end method


# virtual methods
.method public Io()Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kingroot/kinguser/amd;->azI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x5

    return v0
.end method
