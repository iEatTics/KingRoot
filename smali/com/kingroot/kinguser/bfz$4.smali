.class Lcom/kingroot/kinguser/bfz$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfz;->abl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bod:Lcom/kingroot/kinguser/bfz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfz;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/kingroot/kinguser/bfz$4;->bod:Lcom/kingroot/kinguser/bfz;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfz$4;->bod:Lcom/kingroot/kinguser/bfz;

    invoke-static {v1}, Lcom/kingroot/kinguser/bfz;->a(Lcom/kingroot/kinguser/bfz;)Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->GY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfs;->lh(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfz$4;->bod:Lcom/kingroot/kinguser/bfz;

    invoke-static {v1}, Lcom/kingroot/kinguser/bfz;->a(Lcom/kingroot/kinguser/bfz;)Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfs;->d(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz$4;->bod:Lcom/kingroot/kinguser/bfz;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfz;->a(Lcom/kingroot/kinguser/bfz;)Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->dQ(Z)V

    .line 175
    return-void
.end method
