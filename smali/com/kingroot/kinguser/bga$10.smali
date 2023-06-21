.class Lcom/kingroot/kinguser/bga$10;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bga;->iG(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

.field final synthetic this$0:Lcom/kingroot/kinguser/bga;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bga;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/kingroot/kinguser/bga$10;->this$0:Lcom/kingroot/kinguser/bga;

    iput-object p2, p0, Lcom/kingroot/kinguser/bga$10;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$10;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    if-nez v0, :cond_0

    .line 770
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bga$10;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfs;->d(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    .line 768
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bga$10;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    iget-object v1, v1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->GY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfs;->lh(Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$10;->bnG:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->dQ(Z)V

    goto :goto_0
.end method
