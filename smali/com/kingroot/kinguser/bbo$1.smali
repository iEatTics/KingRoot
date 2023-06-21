.class Lcom/kingroot/kinguser/bbo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bbo;->addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bfm:Lcom/kingroot/kinguser/model/RootMgrLogInfo;

.field final synthetic bfn:Lcom/kingroot/kinguser/bbo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bbo;Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/kingroot/kinguser/bbo$1;->bfn:Lcom/kingroot/kinguser/bbo;

    iput-object p2, p0, Lcom/kingroot/kinguser/bbo$1;->bfm:Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/bbq;->WA()Lcom/kingroot/kinguser/bbq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bbo$1;->bfm:Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbq;->addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V

    .line 49
    return-void
.end method
