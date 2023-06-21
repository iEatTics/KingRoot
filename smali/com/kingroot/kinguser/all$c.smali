.class public Lcom/kingroot/kinguser/all$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/all;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public akL:Z

.field public axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Z)V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/all$c;->akL:Z

    .line 141
    iput-boolean p2, p0, Lcom/kingroot/kinguser/all$c;->akL:Z

    .line 142
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iput-object v0, p0, Lcom/kingroot/kinguser/all$c;->axT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 143
    return-void
.end method
